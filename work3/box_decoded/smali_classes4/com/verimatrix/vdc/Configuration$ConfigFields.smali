.class final Lcom/verimatrix/vdc/Configuration$ConfigFields;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConfigFields"
.end annotation


# static fields
.field static final APP_ACTIVE:Ljava/lang/String; = "app_active"

.field static final APP_SEVERITY:Ljava/lang/String; = "app_severity"

.field static final ASSETS_USER_ID:Ljava/lang/String; = "assets_user_id"

.field static final ATTEMPTS_MAX_CONFIG:Ljava/lang/String; = "attempts_max_login"

.field static final ATTEMPTS_MAX_LOGIN:Ljava/lang/String; = "attempts_max_login"

.field static final COMMUNICATIONS_TIMEOUT:Ljava/lang/String; = "delay_communication"

.field static final CONFIGURATION_VERSION:Ljava/lang/String; = "configuration_version"

.field static final CPU_ACTIVE:Ljava/lang/String; = "cpu_active"

.field static final CPU_SEVERITY:Ljava/lang/String; = "cpu_severity"

.field static final DATA_ACTIVE:Ljava/lang/String; = "data_active"

.field static final DATA_SEVERITY:Ljava/lang/String; = "data_severity"

.field static final DEBUG_ACTIVE:Ljava/lang/String; = "debug_active"

.field static final DEBUG_SERVER:Ljava/lang/String; = "debug_server"

.field static final DIRECT_ACTIVE:Ljava/lang/String; = "direct_active"

.field static final DIRECT_EVENT_CODE_LIST:Ljava/lang/String; = "direct_event_code_list"

.field static final DIRECT_SEVERITY:Ljava/lang/String; = "direct_severity"

.field static final ENCRYPT_IV:Ljava/lang/String; = "encrypt_iv"

.field static final ENCRYPT_KEY:Ljava/lang/String; = "encrypt_key"

.field static final ERROR_CONTINUE:Ljava/lang/String; = "delay_error_continue"

.field static final ERROR_ENTRY:Ljava/lang/String; = "delay_error_entry"

.field static final ERROR_EXIT:Ljava/lang/String; = "delay_error_exit"

.field static final HEARTBEAT_ACTIVE:Ljava/lang/String; = "heartbeat_active"

.field static final HEARTBEAT_INTERVAL:Ljava/lang/String; = "heartbeat_interval"

.field static final HEARTBEAT_SEVERITY:Ljava/lang/String; = "heartbeat_severity"

.field static final HOLDOFF:Ljava/lang/String; = "holdoff"

.field static final HOLDOFF_LIMIT:Ljava/lang/String; = "holdoff_limit"

.field static final IP_ADDRESS_ACTIVE:Ljava/lang/String; = "ip_address_active"

.field static final IP_ADDRESS_SEVERITY:Ljava/lang/String; = "ip_address_severity"

.field static final KEY_ID:Ljava/lang/String; = "key_id"

.field static final KEY_VALUE:Ljava/lang/String; = "key_value"

.field static final LIMIT_ID:Ljava/lang/String; = "limit_id"

.field static final LIMIT_VALUE:Ljava/lang/String; = "limit_value"

.field static final LOCATION_ACTIVE:Ljava/lang/String; = "location_active"

.field static final LOCATION_INTERVAL:Ljava/lang/String; = "location_interval"

.field static final LOCATION_SEVERITY:Ljava/lang/String; = "location_severity"

.field static final MAC_ADDRESS_ACTIVE:Ljava/lang/String; = "mac_address_active"

.field static final MAC_ADDRESS_SEVERITY:Ljava/lang/String; = "mac_address_severity"

.field static final MDS_SERVER:Ljava/lang/String; = "mds_server"

.field static final MEMORY_ACTIVE:Ljava/lang/String; = "memory_active"

.field static final MEMORY_SEVERITY:Ljava/lang/String; = "memory_severity"

.field static final METADATA_ACTIVE:Ljava/lang/String; = "metadata_active"

.field static final METADATA_SERVER:Ljava/lang/String; = "metadata_server"

.field static final MONITOR_SERVER:Ljava/lang/String; = "monitor_server"

.field static final MONITOR_SERVER_ACTIVE:Ljava/lang/String; = "monitor_server_active"

.field static final MONITOR_SERVER_IP:Ljava/lang/String; = "monitor_server_ip"

.field static final NETWORK_ACTIVE:Ljava/lang/String; = "network_active"

.field static final NETWORK_SEVERITY:Ljava/lang/String; = "network_severity"

.field static final NONE_ACTIVE:Ljava/lang/String; = "none_active"

.field static final NONE_SEVERITY:Ljava/lang/String; = "none_severity"

.field static final OFFSETDRIFT:Ljava/lang/String; = "offsetdrift"

.field static final PLAYBACK_SETTLE:Ljava/lang/String; = "delay_playback_settle"

.field static final QOS_ACTIVE:Ljava/lang/String; = "qos_active"

.field static final QOS_SEVERITY:Ljava/lang/String; = "qos_severity"

.field static final REGISTER:Ljava/lang/String; = "register"

.field static final SESSION_ACTIVE:Ljava/lang/String; = "session_active"

.field static final SESSION_SEVERITY:Ljava/lang/String; = "session_severity"

.field static final SETTINGS_CONFIGURATION_VERSION:Ljava/lang/String; = "settings_configuration_version"

.field static final SET_GET_SERVER:Ljava/lang/String; = "set_get_server"

.field static final SET_GET_SERVER_ACTIVE:Ljava/lang/String; = "set_get_active"

.field static final SLOW_START:Ljava/lang/String; = "delay_slow_start"

.field static final STALL_SAMPLING_PERIOD:Ljava/lang/String; = "stall_sampling_period"


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/Configuration;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Configuration;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration$ConfigFields;->this$0:Lcom/verimatrix/vdc/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
