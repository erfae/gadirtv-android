.class public Lcom/google/vr/ndk/base/Beta;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BETA_SETTINGS_KEY:Ljava/lang/String; = "beta-settings-key"

.field private static final keyToContract:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    sput-object v0, Lcom/google/vr/ndk/base/Beta;->keyToContract:Ljava/util/Map;

    const-string v1, "beta-settings-key"

    const-string v2, "beta_enabled"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isFeatureEnabled(Landroid/content/Context;Ljava/lang/String;ZZ)Z
    .locals 0

    .line 2
    sget-object p2, Lcom/google/vr/ndk/base/Beta;->keyToContract:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lcom/google/vr/ndk/base/DaydreamApi;->getBooleanSetting(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method
