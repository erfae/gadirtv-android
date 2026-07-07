.class final Lcom/verimatrix/vdc/Configuration$DefaultValues;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verimatrix/vdc/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultValues"
.end annotation


# static fields
.field static final APP_ACTIVE:Z = true

.field static final APP_SEVERITY:I = 0x7fffffff

.field static final ATTEMPTS_MAX_CONFIG:I = 0x5

.field static final ATTEMPTS_MAX_LOGIN:I = 0x5

.field static final COMMUNICATIONS_TIMEOUT:J = 0xea60L

.field static final CONFIGURATION_VERSION:Ljava/lang/String; = "0"

.field static final CPU_ACTIVE:Z = true

.field static final CPU_SEVERITY:I = 0x7fffffff

.field static final DATA_ACTIVE:Z = true

.field static final DATA_SEVERITY:I = 0x7fffffff

.field static final DEBUG_ACTIVE:Z = true

.field static final DEBUG_SERVER:Ljava/lang/String; = ""

.field static final DIRECT_ACTIVE:Z = true

.field static final DIRECT_EVENT_CODE_LIST:Ljava/lang/String; = ""

.field static final DIRECT_SEVERITY:I = 0x7fffffff

.field static final ENCRYPT_IV_VALUE:Ljava/lang/String; = "0000000000000000"

.field static final ENCRYPT_KEY_VALUE:Ljava/lang/String; = "0000000000000000"

.field static final ERROR_CONTINUE:J = 0xea60L

.field static final ERROR_ENTRY:J = 0x1388L

.field static final ERROR_EXIT:J = 0x1388L

.field static final HEARTBEAT_ACTIVE:Z = true

.field static final HEARTBEAT_INTERVAL:J = 0x927c0L

.field static final HEARTBEAT_SEVERITY:I = 0x7fffffff

.field static final HOLDOFF:J = 0x1388L

.field static final HOLDOFF_LIMIT:J = 0x927c0L

.field static final IP_ADDRESS_ACTIVE:Z = false

.field static final IP_ADDRESS_SEVERITY:I = 0x7fffffff

.field static final LIMIT_ID:Ljava/lang/String; = "cache"

.field static final LIMIT_VALUE:J = 0x200L

.field static final LOCATION_ACTIVE:Z = true

.field static final LOCATION_INTERVAL:J = 0x0L

.field static final LOCATION_SEVERITY:I = 0x7fffffff

.field static final MAC_ADDRESS_ACTIVE:Z = false

.field static final MAC_ADDRESS_SEVERITY:I = 0x7fffffff

.field static final MDS_SERVER:Ljava/lang/String; = ""

.field static final MEMORY_ACTIVE:Z = true

.field static final MEMORY_SEVERITY:I = 0x7fffffff

.field static final METADATA_ACTIVE:Z = true

.field static final METADATA_SERVER:Ljava/lang/String; = ""

.field static final MONITOR_SERVER:Ljava/lang/String; = "vrt-home.myverspective.com"

.field static final MONITOR_SERVER_ACTIVE:Z = true

.field static final NETWORK_ACTIVE:Z = true

.field static final NETWORK_SEVERITY:I = 0x7fffffff

.field static final NONE_ACTIVE:Z = true

.field static final NONE_SEVERITY:I = 0x7fffffff

.field static final OFFSETDRIFT:J = 0x3e8L

.field static final PLAYBACK_SETTLE:J = 0x7d0L

.field static final QOS_ACTIVE:Z = true

.field static final QOS_SEVERITY:I = 0x7fffffff

.field static final REGISTER:Ljava/lang/String; = "999999999960000"

.field static final SECURITY_KEY_ID:J = 0x0L

.field static final SECURITY_KEY_VALUE:Ljava/lang/String; = "0000000000000000"

.field static final SESSION_ACTIVE:Z = true

.field static final SESSION_SEVERITY:I = 0x7fffffff

.field static final SETTINGS_CONFIGURATION_VERSION:Ljava/lang/String; = "0"

.field static final SET_GET_SERVER:Ljava/lang/String; = ""

.field static final SET_GET_SERVER_ACTIVE:Z = true

.field static final SLOW_START:J = 0x2710L

.field static final STALL_SAMPLING_PERIOD:J = 0x1f4L


# instance fields
.field final synthetic this$0:Lcom/verimatrix/vdc/Configuration;


# direct methods
.method constructor <init>(Lcom/verimatrix/vdc/Configuration;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/verimatrix/vdc/Configuration$DefaultValues;->this$0:Lcom/verimatrix/vdc/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
