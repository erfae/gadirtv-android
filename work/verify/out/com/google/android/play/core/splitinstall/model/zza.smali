.class public final Lcom/google/android/play/core/splitinstall/model/zza;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Ljava/util/Map;

.field private static final zzb:Ljava/util/Map;

.field private static final zzc:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .registers 20

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/model/zza;->zza:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    .line 2
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/google/android/play/core/splitinstall/model/zza;->zzb:Ljava/util/Map;

    const/4 v2, -0x1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Too many sessions are running for current app, existing sessions must be resolved first."

    const/4 v4, -0x2

    const-string v5, "A requested module is not available (to this user/device, for the installed apk)."

    .line 4
    invoke-static {v0, v2, v3, v4, v5}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x3

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Request is otherwise invalid."

    const/4 v6, -0x4

    const-string v7, "Requested session is not found."

    .line 6
    invoke-static {v0, v4, v5, v6, v7}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, -0x5

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "Split Install API is not available."

    const/4 v8, -0x6

    const-string v9, "Network error: unable to obtain split details."

    .line 8
    invoke-static {v0, v6, v7, v8, v9}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, -0x7

    .line 9
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "Download not permitted under current device circumstances (e.g. in background)."

    const/4 v10, -0x8

    const-string v11, "Requested session contains modules from an existing active session and also new modules."

    .line 10
    invoke-static {v0, v8, v9, v10, v11}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, -0x9

    .line 11
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "Service handling split install has died."

    const/16 v12, -0xa

    const-string v13, "Install failed due to insufficient storage."

    .line 12
    invoke-static {v0, v10, v11, v12, v13}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, -0xb

    .line 13
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "Signature verification error when invoking SplitCompat."

    const/16 v14, -0xc

    const-string v15, "Error in SplitCompat emulation."

    .line 14
    invoke-static {v0, v12, v13, v14, v15}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    const/16 v14, -0xd

    .line 15
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "Error in copying files for SplitCompat."

    move-object/from16 v16, v13

    const/16 v13, -0xe

    move-object/from16 v17, v12

    const-string v12, "The Play Store app is either not installed or not the official version."

    .line 16
    invoke-static {v0, v14, v15, v13, v12}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, -0xf

    .line 17
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v15, "The app is not owned by any user on this device. An app is \"owned\" if it has been acquired from Play."

    move-object/from16 v18, v12

    const/16 v12, -0x64

    move-object/from16 v19, v14

    const-string v14, "Unknown error processing split install."

    .line 18
    invoke-static {v0, v13, v15, v12, v14}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v12, "ACTIVE_SESSIONS_LIMIT_EXCEEDED"

    .line 19
    invoke-interface {v1, v2, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "MODULE_UNAVAILABLE"

    .line 20
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INVALID_REQUEST"

    .line 21
    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "DOWNLOAD_NOT_FOUND"

    .line 22
    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "API_NOT_AVAILABLE"

    .line 23
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "NETWORK_ERROR"

    .line 24
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ACCESS_DENIED"

    .line 25
    invoke-interface {v1, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INCOMPATIBLE_WITH_EXISTING_SESSION"

    .line 26
    invoke-interface {v1, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SERVICE_DIED"

    .line 27
    invoke-interface {v1, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INSUFFICIENT_STORAGE"

    .line 28
    invoke-interface {v1, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SPLITCOMPAT_VERIFICATION_ERROR"

    move-object/from16 v3, v17

    .line 29
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SPLITCOMPAT_EMULATION_ERROR"

    move-object/from16 v3, v16

    .line 30
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "SPLITCOMPAT_COPY_ERROR"

    move-object/from16 v3, v19

    .line 31
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "PLAY_STORE_NOT_FOUND"

    move-object/from16 v3, v18

    .line 32
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "APP_NOT_OWNED"

    .line 33
    invoke-interface {v1, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "INTERNAL_ERROR"

    .line 34
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    .line 35
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/play/core/splitinstall/model/zza;->zzc:Ljava/util/Map;

    .line 36
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_113

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/google/android/play/core/splitinstall/model/zza;->zzc:Ljava/util/Map;

    .line 37
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f5

    :cond_113
    return-void
.end method

.method public static zza(Ljava/lang/String;)I
    .registers 3
    .annotation build Lcom/google/android/play/core/splitinstall/model/SplitInstallErrorCode;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/model/zza;->zzc:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_f

    .line 2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 3
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 4
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " is unknown error."

    invoke-virtual {p0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static zzb(I)Ljava/lang/String;
    .registers 5
    .param p0    # I
        .annotation build Lcom/google/android/play/core/splitinstall/model/SplitInstallErrorCode;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/android/play/core/splitinstall/model/zza;->zza:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lcom/google/android/play/core/splitinstall/model/zza;->zzb:Ljava/util/Map;

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

    add-int/lit8 v1, v1, 0x76

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, " (https://developer.android.com/reference/com/google/android/play/core/splitinstall/model/SplitInstallErrorCode.html#"

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
