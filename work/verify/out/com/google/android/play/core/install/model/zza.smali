.class public final Lcom/google/android/play/core/install/model/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Ljava/util/Map;

.field private static final zzb:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/play/core/install/model/zza;->zza:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/play/core/install/model/zza;->zzb:Ljava/util/Map;

    const/4 v2, -0x2

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "An unknown error occurred."

    const/4 v4, -0x3

    const-string v5, "The API is not available on this device."

    .line 4
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x4

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The request that was sent by the app is malformed."

    const/4 v6, -0x5

    const-string v7, "The install is unavailable to this user or device."

    .line 6
    invoke-static {v0, v4, v5, v6, v7}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x6

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "The download/install is not allowed, due to the current device state (e.g. low battery, low disk space, ...)."

    const/4 v8, -0x7

    const-string v9, "The install/update has not been (fully) downloaded yet."

    .line 8
    invoke-static {v0, v6, v7, v8, v9}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, -0x8

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "The install is already in progress and there is no UI flow to resume."

    const/16 v10, -0x9

    const-string v11, "The Play Store app is either not installed or not the official version."

    .line 10
    invoke-static {v0, v8, v9, v10, v11}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, -0xa

    .line 11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "The app is not owned by any user on this device. An app is \"owned\" if it has been acquired from Play."

    const/16 v12, -0x64

    const-string v13, "An internal error happened in the Play Store."

    .line 12
    invoke-static {v0, v10, v11, v12, v13}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v11, "ERROR_UNKNOWN"

    .line 13
    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERROR_API_NOT_AVAILABLE"

    .line 14
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERROR_INVALID_REQUEST"

    .line 15
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERROR_INSTALL_UNAVAILABLE"

    .line 16
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERROR_INSTALL_NOT_ALLOWED"

    .line 17
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERROR_DOWNLOAD_NOT_PRESENT"

    .line 18
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERROR_INSTALL_IN_PROGRESS"

    .line 19
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ERROR_INTERNAL_ERROR"

    .line 20
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ERROR_PLAY_STORE_NOT_FOUND"

    .line 21
    invoke-interface {v1, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "ERROR_APP_NOT_OWNED"

    .line 22
    invoke-interface {v1, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zza(I)Ljava/lang/String;
    .registers 5
    .param p0    # I
        .annotation build Lcom/google/android/play/core/install/model/InstallErrorCode;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/play/core/install/model/zza;->zza:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lcom/google/android/play/core/install/model/zza;->zzb:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_42

    .line 2
    :cond_15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x67

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " (https://developer.android.com/reference/com/google/android/play/core/install/model/InstallErrorCode#"

    const-string v2, ")"

    .line 4
    invoke-static {v3, v0, v1, p0, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    :goto_42
    const-string p0, ""

    return-object p0
.end method
