.class public Lcom/google/vr/cardboard/VrSettingsProviderContract;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BETA_ENABLED:Ljava/lang/String; = "beta_enabled"

.field public static final BOOTS_TO_VR:Ljava/lang/String; = "boots_to_vr"

.field public static final DASHBOARD_ENABLED:Ljava/lang/String; = "dashboard_enabled"

.field public static final DAYDREAM_SETUP_COMPLETED:Ljava/lang/String; = "daydream_setup"

.field public static final DEVICE_PARAMS_SETTING:Ljava/lang/String; = "device_params"

.field public static final DEVICE_PROFILE:Ljava/lang/String; = "device_profile"

.field public static final DISPLAY_PARAMS_SETTING:Ljava/lang/String; = "phone_params"

.field public static final IS_IN_VR_SESSION:Ljava/lang/String; = "is_in_vr_session"

.field public static final PROVIDER_INTENT_ACTION:Ljava/lang/String; = "android.content.action.VR_SETTINGS_PROVIDER"

.field public static final QUERY_PARAMETER_KEY:Ljava/lang/String; = "key"

.field public static final RECENT_HEADSETS_SETTING:Ljava/lang/String; = "recent_headsets"

.field public static final SDK_CONFIGURATION_PARAMS_SETTING:Ljava/lang/String; = "sdk_configuration_params"

.field public static final SETTING_VALUE_KEY:Ljava/lang/String; = "value"

.field public static final SKIP_ITHACA_PAIRING_FLOW:Ljava/lang/String; = "skip_ithaca_pairing_flow"

.field public static final USER_PREFS_SETTING:Ljava/lang/String; = "user_prefs"

.field public static final VRCORE_AUTHORITY:Ljava/lang/String; = "com.google.vr.vrcore.settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 3
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static createUri(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 8
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 9
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "key"

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
