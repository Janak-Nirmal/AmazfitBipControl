//
//  GattCharacteristic.swift
//  AmazfitBipControl
//
//  Created by Круцких Олег on 15.12.2017.
//  Copyright © 2017 Круцких Олег. All rights reserved.
//

import Foundation
import CoreBluetooth

class GattCharacteristic {
    
    //part of the generic BLE specs see https://developer.bluetooth.org/gatt/characteristics/Pages/CharacteristicsHome.aspx
    //the list is complete as of 2015-09-28
    public static var UUID_CHARACTERISTIC_AEROBIC_HEART_RATE_LOWER_LIMIT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A7E")
    public static var UUID_CHARACTERISTIC_AEROBIC_HEART_RATE_UPPER_LIMIT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A84")
    public static var UUID_CHARACTERISTIC_AEROBIC_THRESHOLD: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A7F")
    public static var UUID_CHARACTERISTIC_AGE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A80")
    public static var UUID_CHARACTERISTIC_AGGREGATE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A5A")
    public static var UUID_CHARACTERISTIC_ALERT_CATEGORY_ID: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A43")
    public static var UUID_CHARACTERISTIC_ALERT_CATEGORY_ID_BIT_MASK: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A42")
    public static var UUID_CHARACTERISTIC_ALERT_LEVEL: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A06")
    public static var UUID_CHARACTERISTIC_CLIENT_CHARACTERISTIC_CONFIG: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2902")
    
    public static var NO_ALERT = 0x0;
    public static var MILD_ALERT = 0x1;
    public static var HIGH_ALERT = 0x2;
    
    public static var UUID_CHARACTERISTIC_ALERT_NOTIFICATION_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A44")
    public static var UUID_CHARACTERISTIC_ALERT_STATUS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A3F")
    public static var UUID_CHARACTERISTIC_ALTITUDE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AB3")
    public static var UUID_CHARACTERISTIC_ANAEROBIC_HEART_RATE_LOWER_LIMIT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A81")
    public static var UUID_CHARACTERISTIC_ANAEROBIC_HEART_RATE_UPPER_LIMIT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A82")
    public static var UUID_CHARACTERISTIC_ANAEROBIC_THRESHOLD: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A83")
    public static var UUID_CHARACTERISTIC_ANALOG: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A58")
    public static var UUID_CHARACTERISTIC_APPARENT_WIND_DIRECTION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A73")
    public static var UUID_CHARACTERISTIC_APPARENT_WIND_SPEED: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A72")
    public static var UUID_CHARACTERISTIC_GAP_APPEARANCE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A01")
    public static var UUID_CHARACTERISTIC_BAROMETRIC_PRESSURE_TREND: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA3")
    public static var UUID_CHARACTERISTIC_BATTERY_LEVEL: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A19")
    public static var UUID_CHARACTERISTIC_BLOOD_PRESSURE_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A49")
    public static var UUID_CHARACTERISTIC_BLOOD_PRESSURE_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A35")
    public static var UUID_CHARACTERISTIC_BODY_COMPOSITION_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A9B")
    public static var UUID_CHARACTERISTIC_BODY_COMPOSITION_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A9C")
    public static var UUID_CHARACTERISTIC_BODY_SENSOR_LOCATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A38")
    public static var UUID_CHARACTERISTIC_BOND_MANAGEMENT_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA4")
    public static var UUID_CHARACTERISTIC_BOND_MANAGEMENT_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA5")
    public static var UUID_CHARACTERISTIC_BOOT_KEYBOARD_INPUT_REPORT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A22")
    public static var UUID_CHARACTERISTIC_BOOT_KEYBOARD_OUTPUT_REPORT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A32")
    public static var UUID_CHARACTERISTIC_BOOT_MOUSE_INPUT_REPORT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A33")
    public static var UUID_CHARACTERISTIC_GAP_CENTRAL_ADDRESS_RESOLUTION_SUPPORT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA6")
    public static var UUID_CHARACTERISTIC_CGM_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA8")
    public static var UUID_CHARACTERISTIC_CGM_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA7")
    public static var UUID_CHARACTERISTIC_CGM_SESSION_RUN_TIME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AAB")
    public static var UUID_CHARACTERISTIC_CGM_SESSION_START_TIME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AAA")
    public static var UUID_CHARACTERISTIC_CGM_SPECIFIC_OPS_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AAC")
    public static var UUID_CHARACTERISTIC_CGM_STATUS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA9")
    public static var UUID_CHARACTERISTIC_CSC_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A5C")
    public static var UUID_CHARACTERISTIC_CSC_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A5B")
    public static var UUID_CHARACTERISTIC_CURRENT_TIME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A2B")
    public static var UUID_CHARACTERISTIC_CYCLING_POWER_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A66")
    public static var UUID_CHARACTERISTIC_CYCLING_POWER_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A65")
    public static var UUID_CHARACTERISTIC_CYCLING_POWER_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A63")
    public static var UUID_CHARACTERISTIC_CYCLING_POWER_VECTOR: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A64")
    public static var UUID_CHARACTERISTIC_DATABASE_CHANGE_INCREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A99")
    public static var UUID_CHARACTERISTIC_DATE_OF_BIRTH: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A85")
    public static var UUID_CHARACTERISTIC_DATE_OF_THRESHOLD_ASSESSMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A86")
    public static var UUID_CHARACTERISTIC_DATE_TIME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A08")
    public static var UUID_CHARACTERISTIC_DAY_DATE_TIME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A0A")
    public static var UUID_CHARACTERISTIC_DAY_OF_WEEK: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A09")
    public static var UUID_CHARACTERISTIC_DESCRIPTOR_VALUE_CHANGED: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A7D")
    public static var UUID_CHARACTERISTIC_GAP_DEVICE_NAME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A00")
    public static var UUID_CHARACTERISTIC_DEW_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A7B")
    public static var UUID_CHARACTERISTIC_DIGITAL: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A56")
    public static var UUID_CHARACTERISTIC_DST_OFFSET: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A0D")
    public static var UUID_CHARACTERISTIC_ELEVATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A6C")
    public static var UUID_CHARACTERISTIC_EMAIL_ADDRESS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A87")
    public static var UUID_CHARACTERISTIC_EXACT_TIME_256: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A0C")
    public static var UUID_CHARACTERISTIC_FAT_BURN_HEART_RATE_LOWER_LIMIT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A88")
    public static var UUID_CHARACTERISTIC_FAT_BURN_HEART_RATE_UPPER_LIMIT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A89")
    public static var UUID_CHARACTERISTIC_FIRMWARE_REVISION_STRING: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A26")
    public static var UUID_CHARACTERISTIC_FIRST_NAME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A8A")
    public static var UUID_CHARACTERISTIC_FIVE_ZONE_HEART_RATE_LIMITS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A8B")
    public static var UUID_CHARACTERISTIC_FLOOR_NUMBER: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AB2")
    public static var UUID_CHARACTERISTIC_GENDER: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A8C")
    public static var UUID_CHARACTERISTIC_GLUCOSE_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A51")
    public static var UUID_CHARACTERISTIC_GLUCOSE_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A18")
    public static var UUID_CHARACTERISTIC_GLUCOSE_MEASUREMENT_CONTEXT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A34")
    public static var UUID_CHARACTERISTIC_GUST_FACTOR: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A74")
    public static var UUID_CHARACTERISTIC_HARDWARE_REVISION_STRING: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A27")
    public static var UUID_CHARACTERISTIC_HEART_RATE_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A39")
    public static var UUID_CHARACTERISTIC_HEART_RATE_MAX: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A8D")
    public static var UUID_CHARACTERISTIC_HEART_RATE_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A37")
    public static var UUID_CHARACTERISTIC_HEAT_INDEX: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A7A")
    public static var UUID_CHARACTERISTIC_HEIGHT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A8E")
    public static var UUID_CHARACTERISTIC_HID_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A4C")
    public static var UUID_CHARACTERISTIC_HID_INFORMATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A4A")
    public static var UUID_CHARACTERISTIC_HIP_CIRCUMFERENCE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A8F")
    public static var UUID_CHARACTERISTIC_HUMIDITY: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A6F")
    public static var UUID_CHARACTERISTIC_IEEE_11073_20601_REGULATORY_CERTIFICATION_DATA_LIST: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A2A")
    public static var UUID_CHARACTERISTIC_INDOOR_POSITIONING_CONFIGURATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AAD")
    public static var UUID_CHARACTERISTIC_INTERMEDIATE_BLOOD_PRESSURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A36")
    public static var UUID_CHARACTERISTIC_INTERMEDIATE_TEMPERATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A1E")
    public static var UUID_CHARACTERISTIC_IRRADIANCE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A77")
    public static var UUID_CHARACTERISTIC_LANGUAGE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA2")
    public static var UUID_CHARACTERISTIC_LAST_NAME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A90")
    public static var UUID_CHARACTERISTIC_LATITUDE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AAE")
    public static var UUID_CHARACTERISTIC_LN_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A6B")
    public static var UUID_CHARACTERISTIC_LN_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A6A")
    public static var UUID_CHARACTERISTIC_LOCAL_EAST_COORDINATE_XML: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AB1")
    public static var UUID_CHARACTERISTIC_LOCAL_NORTH_COORDINATE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AB0")
    public static var UUID_CHARACTERISTIC_LOCAL_TIME_INFORMATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A0F")
    public static var UUID_CHARACTERISTIC_LOCATION_AND_SPEED: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A67")
    public static var UUID_CHARACTERISTIC_LOCATION_NAME: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AB5")
    public static var UUID_CHARACTERISTIC_LONGITUDE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AAF")
    public static var UUID_CHARACTERISTIC_MAGNETIC_DECLINATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A2C")
    public static var UUID_CHARACTERISTIC_MAGNETIC_FLUX_DENSITY_2D: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA0")
    public static var UUID_CHARACTERISTIC_MAGNETIC_FLUX_DENSITY_3D: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AA1")
    public static var UUID_CHARACTERISTIC_MANUFACTURER_NAME_STRING: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A29")
    public static var UUID_CHARACTERISTIC_MAXIMUM_RECOMMENDED_HEART_RATE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A91")
    public static var UUID_CHARACTERISTIC_MEASUREMENT_INTERVAL: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A21")
    public static var UUID_CHARACTERISTIC_MODEL_NUMBER_STRING: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A24")
    public static var UUID_CHARACTERISTIC_NAVIGATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A68")
    public static var UUID_CHARACTERISTIC_NEW_ALERT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A46")
    public static var UUID_CHARACTERISTIC_GAP_PERIPHERAL_PREFERRED_CONNECTION_PARAMETERS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A04")
    public static var UUID_CHARACTERISTIC_GAP_PERIPHERAL_PRIVACY_FLAG: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A02")
    public static var UUID_CHARACTERISTIC_PLX_CONTINUOUS_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A5F")
    public static var UUID_CHARACTERISTIC_PLX_FEATURES: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A60")
    public static var UUID_CHARACTERISTIC_PLX_SPOT_CHECK_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A5E")
    public static var UUID_CHARACTERISTIC_PNP_ID: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A50")
    public static var UUID_CHARACTERISTIC_POLLEN_CONCENTRATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A75")
    public static var UUID_CHARACTERISTIC_POSITION_QUALITY: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A69")
    public static var UUID_CHARACTERISTIC_PRESSURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A6D")
    public static var UUID_CHARACTERISTIC_PROTOCOL_MODE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A4E")
    public static var UUID_CHARACTERISTIC_RAINFALL: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A78")
    public static var UUID_CHARACTERISTIC_GAP_RECONNECTION_ADDRESS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A03")
    public static var UUID_CHARACTERISTIC_RECORD_ACCESS_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A52")
    public static var UUID_CHARACTERISTIC_REFERENCE_TIME_INFORMATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A14")
    public static var UUID_CHARACTERISTIC_REPORT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A4D")
    public static var UUID_CHARACTERISTIC_REPORT_MAP: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A4B")
    public static var UUID_CHARACTERISTIC_RESTING_HEART_RATE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A92")
    public static var UUID_CHARACTERISTIC_RINGER_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A40")
    public static var UUID_CHARACTERISTIC_RINGER_SETTING: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A41")
    public static var UUID_CHARACTERISTIC_RSC_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A54")
    public static var UUID_CHARACTERISTIC_RSC_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A53")
    public static var UUID_CHARACTERISTIC_SC_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A55")
    public static var UUID_CHARACTERISTIC_SCAN_INTERVAL_WINDOW: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A4F")
    public static var UUID_CHARACTERISTIC_SCAN_REFRESH: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A31")
    public static var UUID_CHARACTERISTIC_SENSOR_LOCATION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A5D")
    public static var UUID_CHARACTERISTIC_SERIAL_NUMBER_STRING: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A25")
    public static var UUID_CHARACTERISTIC_GATT_SERVICE_CHANGED: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A05")
    public static var UUID_CHARACTERISTIC_SOFTWARE_REVISION_STRING: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A28")
    public static var UUID_CHARACTERISTIC_SPORT_TYPE_FOR_AEROBIC_AND_ANAEROBIC_THRESHOLDS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A93")
    public static var UUID_CHARACTERISTIC_SUPPORTED_NEW_ALERT_CATEGORY: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A47")
    public static var UUID_CHARACTERISTIC_SUPPORTED_UNREAD_ALERT_CATEGORY: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A48")
    public static var UUID_CHARACTERISTIC_SYSTEM_ID: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A23")
    public static var UUID_CHARACTERISTIC_TEMPERATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A6E")
    public static var UUID_CHARACTERISTIC_TEMPERATURE_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A1C")
    public static var UUID_CHARACTERISTIC_TEMPERATURE_TYPE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A1D")
    public static var UUID_CHARACTERISTIC_THREE_ZONE_HEART_RATE_LIMITS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A94")
    public static var UUID_CHARACTERISTIC_TIME_ACCURACY: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A12")
    public static var UUID_CHARACTERISTIC_TIME_SOURCE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A13")
    public static var UUID_CHARACTERISTIC_TIME_UPDATE_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A16")
    public static var UUID_CHARACTERISTIC_TIME_UPDATE_STATE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A17")
    public static var UUID_CHARACTERISTIC_TIME_WITH_DST: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A11")
    public static var UUID_CHARACTERISTIC_TIME_ZONE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A0E")
    public static var UUID_CHARACTERISTIC_TRUE_WIND_DIRECTION: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A71")
    public static var UUID_CHARACTERISTIC_TRUE_WIND_SPEED: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A70")
    public static var UUID_CHARACTERISTIC_TWO_ZONE_HEART_RATE_LIMIT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A95")
    public static var UUID_CHARACTERISTIC_TX_POWER_LEVEL: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A07")
    public static var UUID_CHARACTERISTIC_UNCERTAINTY: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2AB4")
    public static var UUID_CHARACTERISTIC_UNREAD_ALERT_STATUS: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A45")
    public static var UUID_CHARACTERISTIC_USER_CONTROL_POINT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A9F")
    public static var UUID_CHARACTERISTIC_USER_INDEX: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A9A")
    public static var UUID_CHARACTERISTIC_UV_INDEX: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A76")
    public static var UUID_CHARACTERISTIC_VO2_MAX: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A96")
    public static var UUID_CHARACTERISTIC_WAIST_CIRCUMFERENCE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A97")
    public static var UUID_CHARACTERISTIC_WEIGHT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A98")
    public static var UUID_CHARACTERISTIC_WEIGHT_MEASUREMENT: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A9D")
    public static var UUID_CHARACTERISTIC_WEIGHT_SCALE_FEATURE: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A9E")
    public static var UUID_CHARACTERISTIC_WIND_CHILL: CBUUID = GattService.getUUIDFromBase(pieceUUID: "2A79")
    
    
}