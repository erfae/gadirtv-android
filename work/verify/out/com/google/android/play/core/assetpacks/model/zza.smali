.class public final Lcom/google/android/play/core/assetpacks/model/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Ljava/util/Map;

.field private static final zzb:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/play/core/assetpacks/model/zza;->zza:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/play/core/assetpacks/model/zza;->zzb:Ljava/util/Map;

    const/4 v2, -0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "The requesting app is unavailable (e.g. unpublished, nonexistent version code)."

    const/4 v4, -0x2

    const-string v5, "The requested pack is not available."

    .line 4
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x3

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "The request is invalid."

    const/4 v6, -0x4

    const-string v7, "The requested download is not found."

    .line 6
    invoke-static {v0, v4, v5, v6, v7}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x5

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "The Asset Delivery API is not available."

    const/4 v8, -0x6

    const-string v9, "Network error. Unable to obtain the asset pack details."

    .line 8
    invoke-static {v0, v6, v7, v8, v9}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, -0x7

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Download not permitted under current device circumstances (e.g. in background)."

    const/16 v10, -0xa

    const-string v11, "Asset pack download failed due to insufficient storage."

    .line 10
    invoke-static {v0, v8, v9, v10, v11}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, -0xb

    .line 11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "The Play Store app is either not installed or not the official version."

    const/16 v12, -0xc

    const-string v13, "Tried to show the cellular data confirmation but no asset packs are waiting for Wi-Fi."

    .line 12
    invoke-static {v0, v10, v11, v12, v13}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, -0xd

    .line 13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "The app is not owned by any user on this device. An app is \"owned\" if it has been acquired from Play."

    const/16 v14, -0x64

    const-string v15, "Unknown error downloading an asset pack."

    .line 14
    invoke-static {v0, v12, v13, v14, v15}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v13, "APP_UNAVAILABLE"

    .line 15
    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PACK_UNAVAILABLE"

    .line 16
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INVALID_REQUEST"

    .line 17
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DOWNLOAD_NOT_FOUND"

    .line 18
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "API_NOT_AVAILABLE"

    .line 19
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NETWORK_ERROR"

    .line 20
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ACCESS_DENIED"

    .line 21
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INSUFFICIENT_STORAGE"

    .line 22
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PLAY_STORE_NOT_FOUND"

    .line 23
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NETWORK_UNRESTRICTED"

    .line 24
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "APP_NOT_OWNED"

    .line 25
    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INTERNAL_ERROR"

    .line 26
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static zza(I)Ljava/lang/String;
    .registers 5
    .param p0    # I
        .annotation build Lcom/google/android/play/core/assetpacks/model/AssetPackErrorCode;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/model/zza;->zza:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string p0, ""

    return-object p0

    .line 2
    :cond_f
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/play/core/assetpacks/model/zza;->zzb:Ljava/util/Map;

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

    add-int/lit8 v1, v1, 0x71

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " (https://developer.android.com/reference/com/google/android/play/core/assetpacks/model/AssetPackErrorCode.html#"

    const-string v2, ")"

    .line 4
    invoke-static {v3, v0, v1, p0, v2}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
