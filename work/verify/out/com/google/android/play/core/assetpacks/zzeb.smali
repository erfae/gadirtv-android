.class final Lcom/google/android/play/core/assetpacks/zzeb;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzc:Lcom/google/android/play/core/assetpacks/zzed;

.field private final zzd:Lcom/google/android/play/core/common/zza;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "PackMetadataManager"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzeb;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/assetpacks/zzed;Lcom/google/android/play/core/common/zza;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzc:Lcom/google/android/play/core/assetpacks/zzed;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzd:Lcom/google/android/play/core/common/zza;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzd:Lcom/google/android/play/core/common/zza;

    const-string v1, "assetOnlyUpdates"

    invoke-virtual {v0, v1}, Lcom/google/android/play/core/common/zza;->zza(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_68

    :cond_15
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzc:Lcom/google/android/play/core/assetpacks/zzed;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzed;->zza()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 4
    invoke-virtual {v2, p1}, Lcom/google/android/play/core/assetpacks/zzbh;->zzc(Ljava/lang/String;)J

    move-result-wide v3

    .line 5
    new-instance v5, Ljava/io/File;

    invoke-virtual {v2, p1, v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v2

    const-string v3, "properties.dat"

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    :try_start_2c
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_37

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_55

    :cond_37
    new-instance v2, Ljava/io/FileInputStream;

    .line 8
    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3c} :catch_5b

    :try_start_3c
    new-instance v3, Ljava/util/Properties;

    .line 9
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 10
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_56

    .line 11
    :try_start_44
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "moduleVersionTag"

    .line 12
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_54

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_53} :catch_5b

    goto :goto_55

    :cond_54
    move-object p1, v2

    :goto_55
    return-object p1

    :catchall_56
    move-exception v0

    .line 14
    :try_start_57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catchall {:try_start_57 .. :try_end_5a} :catchall_5a

    :catchall_5a
    :try_start_5a
    throw v0
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5b} :catch_5b

    .line 15
    :catch_5b
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzeb;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "Failed to read pack version tag for pack %s"

    .line 16
    invoke-virtual {v0, p1, v2}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_68
    :goto_68
    return-object v1
.end method

.method public final zzb(Ljava/lang/String;IJLjava/lang/String;)V
    .registers 9
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p5, :cond_8

    .line 1
    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2
    :cond_8
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p5

    :cond_c
    new-instance v0, Ljava/util/Properties;

    .line 3
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "moduleVersionTag"

    .line 4
    invoke-virtual {v0, v1, p5}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p5, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzeb;->zzb:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/play/core/assetpacks/zzbh;->zzi(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p1

    const-string p2, "properties.dat"

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 8
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 9
    invoke-direct {p5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 10
    :try_start_36
    invoke-virtual {v0, p5, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3d

    .line 11
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_3d
    move-exception p1

    .line 12
    :try_start_3e
    invoke-virtual {p5}, Ljava/io/OutputStream;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_41

    :catchall_41
    throw p1
.end method
