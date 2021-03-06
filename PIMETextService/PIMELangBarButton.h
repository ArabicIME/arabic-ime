//
//	Copyright (C) 2016 Hong Jen Yee (PCMan) <pcman.tw@gmail.com>
//
//	This library is free software; you can redistribute it and/or
//	modify it under the terms of the GNU Library General Public
//	License as published by the Free Software Foundation; either
//	version 2 of the License, or (at your option) any later version.
//
//	This library is distributed in the hope that it will be useful,
//	but WITHOUT ANY WARRANTY; without even the implied warranty of
//	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
//	Library General Public License for more details.
//
//	You should have received a copy of the GNU Library General Public
//	License along with this library; if not, write to the
//	Free Software Foundation, Inc., 51 Franklin St, Fifth Floor,
//	Boston, MA  02110-1301, USA.
//

#ifndef PIME_LANGUAGE_BAR_BUTTON_H
#define PIME_LANGUAGE_BAR_BUTTON_H

#include <libIME2/src/LangBarButton.h>
#include <json/json.h>
#include <string>
#include <unordered_map>

namespace PIME {

class TextService;

class LangBarButton : public Ime::LangBarButton {
public:
	LangBarButton(TextService* service, const std::string& id, const GUID& guid, UINT commandId = 0, const wchar_t* text = NULL, DWORD style = TF_LBI_STYLE_BTN_BUTTON);

	static LangBarButton* fromJson(TextService* service, const Json::Value& info);
	void updateFromJson(const Json::Value& info);

	const std::string& id() const {
		return id_;
	}

    void setIconFile(std::wstring filePath);

	static void clearIconCache();

	// ITfLangBarItemButton
	STDMETHODIMP OnClick(TfLBIClick click, POINT pt, const RECT *prcArea);
	STDMETHODIMP InitMenu(ITfMenu *pMenu);

protected:
	virtual ~LangBarButton(); // COM object should be deleted using Rlease()

private:
	std::string id_;
    std::wstring iconFile_;
	static std::unordered_map<std::wstring, HICON> iconCache_; // cache loaded icons
};

} // namespace PIME

#endif // PIME_LANGUAGE_BAR_BUTTON_H
