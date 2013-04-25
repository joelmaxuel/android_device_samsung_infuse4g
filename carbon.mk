# Release name
PRODUCT_RELEASE_NAME := Infuse4G

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Inherit device configuration
$(call inherit-product, device/samsung/infuse4g/full_infuse4g.mk)

# Infuse is a GSM phone
$(call inherit-product, vendor/carbon/config/common_gsm.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# languages
PRODUCT_LOCALES := en_US de_DE zh_CN zh_TW cs_CZ nl_BE nl_NL en_AU en_GB en_CA en_NZ en_SG fr_BE fr_CA fr_FR fr_CH de_AT de_LI de_CH it_IT it_CH ja_JP ko_KR pl_PL ru_RU es_ES ar_EG ar_IL bg_BG ca_ES hr_HR da_DK en_IN en_IE en_ZA fi_FI el_GR iw_IL hi_IN hu_HU in_ID lv_LV lt_LT nb_NO pt_BR pt_PT ro_RO sr_RS sk_SK sl_SI es_US sv_SE tl_PH th_TH tr_TR uk_UA vi_VN

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := infuse4g
PRODUCT_NAME := carbon_infuse4g
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SGH-I997
PRODUCT_PROPERTY_OVERRIDES += ro.buildzipid=carbon.infuse4g.$(shell date +%m%d%y).$(shell date +%H%M%S)

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I997 TARGET_DEVICE=SGH-I997 BUILD_FINGERPRINT=samsung/SGH-I997/SGH-I997:2.3.6/GINGERBREAD/UCLB3:user/release-keys PRIVATE_BUILD_DESC="SGH-I997-user 2.3.6 GINGERBREAD UCLB3 release-keys"
