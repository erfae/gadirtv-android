.class public interface abstract Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inka/ncg2/Ncg2LocalWebServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebServerListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;
    }
.end annotation


# static fields
.field public static final LWS_ERROR_FILE_IO_ERROR:I = 0x2712

.field public static final LWS_ERROR_HLS_PROXY_SERVER_ERROR:I = 0x2713

.field public static final LWS_ERROR_HTTP_PROXY_INTERNAL_ERROR:I = 0x271f

.field public static final LWS_ERROR_INVALID_LICENSE_ERROR:I = 0x2716

.field public static final LWS_ERROR_INVALID_PARAMETER_ERROR:I = 0x2718

.field public static final LWS_ERROR_INVALID_PLAYER_ERROR:I = 0x271a

.field public static final LWS_ERROR_LOCAL_WEBSERVER_STOPED_ERROR:I = 0x2719

.field public static final LWS_ERROR_SECURITY_THREAT_DETECTED:I = 0x2714

.field public static final LWS_ERROR_TRIAL_TIME_OUT:I = 0x271c

.field public static final LWS_ERROR_UNKNOWN_ERROR:I = 0x2710

.field public static final LWS_ERROR_UNSUPPORTED_OPERATION_ERROR:I = 0x2717

.field public static final LWS_NOTIFY_DECRYPT_DISABLED:I = 0x3ec

.field public static final LWS_NOTIFY_DNP_READ_FAIL_PLAY_ERROR:I = 0x3ea

.field public static final LWS_NOTIFY_HDMI_DETECTED:I = 0x3eb

.field public static final LWS_NOTIFY_NETWORK_ERROR:I = 0x3e9

.field public static final LWS_NOTIFY_SCREEN_RECORDER_DETECTED:I = 0x3ed

.field public static final LWS_NOTIFY_SUCCESS:I = 0x3e8


# virtual methods
.method public abstract onCheckPlayerStatus(Ljava/lang/String;)Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener$PlayerState;
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract onNotification(ILjava/lang/String;)V
.end method
