.class public final Lcom/google/android/play/core/internal/zzaw;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/zzh;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/play/core/splitcompat/zze;

.field private final zzc:Lcom/google/android/play/core/internal/zzay;

.field private final zzd:Ljava/util/concurrent/Executor;

.field private final zze:Lcom/google/android/play/core/splitcompat/zzr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/play/core/internal/zzay;Lcom/google/android/play/core/splitcompat/zze;Lcom/google/android/play/core/splitcompat/zzr;[B)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzaw;->zza:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/play/core/internal/zzaw;->zzb:Lcom/google/android/play/core/splitcompat/zze;

    iput-object p3, p0, Lcom/google/android/play/core/internal/zzaw;->zzc:Lcom/google/android/play/core/internal/zzay;

    iput-object p2, p0, Lcom/google/android/play/core/internal/zzaw;->zzd:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/google/android/play/core/internal/zzaw;->zze:Lcom/google/android/play/core/splitcompat/zzr;

    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/play/core/internal/zzaw;)Lcom/google/android/play/core/internal/zzay;
    .registers 1

    iget-object p0, p0, Lcom/google/android/play/core/internal/zzaw;->zzc:Lcom/google/android/play/core/internal/zzay;

    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/play/core/internal/zzaw;Ljava/util/List;Lcom/google/android/play/core/splitinstall/zzf;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/play/core/internal/zzaw;->zze(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 2
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_11

    .line 3
    invoke-interface {p2}, Lcom/google/android/play/core/splitinstall/zzf;->zzc()V

    return-void

    .line 4
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2, p0}, Lcom/google/android/play/core/splitinstall/zzf;->zzb(I)V

    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/play/core/internal/zzaw;Lcom/google/android/play/core/splitinstall/zzf;)V
    .registers 5

    const-string v0, "SplitCompat"

    const/16 v1, -0xc

    .line 1
    :try_start_4
    iget-object p0, p0, Lcom/google/android/play/core/internal/zzaw;->zza:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/play/core/internal/zzce;->zza(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/google/android/play/core/splitcompat/SplitCompat;->zzd(Landroid/content/Context;)Z

    move-result p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_22

    if-nez p0, :cond_19

    const-string p0, "Emulating splits failed."

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p1, v1}, Lcom/google/android/play/core/splitinstall/zzf;->zzb(I)V

    return-void

    :cond_19
    const-string p0, "Splits installed."

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-interface {p1}, Lcom/google/android/play/core/splitinstall/zzf;->zza()V

    return-void

    :catch_22
    move-exception p0

    const-string v2, "Error emulating splits."

    .line 7
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    invoke-interface {p1, v1}, Lcom/google/android/play/core/splitinstall/zzf;->zzb(I)V

    return-void
.end method

.method private final zze(Ljava/util/List;)Ljava/lang/Integer;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/play/core/splitinstall/model/SplitInstallErrorCode;
    .end annotation

    const-string v0, "SplitCompat"

    const/16 v1, -0xd

    .line 1
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcom/google/android/play/core/internal/zzaw;->zzb:Lcom/google/android/play/core/splitcompat/zze;

    invoke-virtual {v3}, Lcom/google/android/play/core/splitcompat/zze;->zzd()Ljava/io/File;

    move-result-object v3

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_128

    const/4 v3, 0x0

    .line 2
    :try_start_16
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v4
    :try_end_1a
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_16 .. :try_end_1a} :catch_1e
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    goto/16 :goto_11c

    :catch_1e
    move-object v4, v3

    :goto_1f
    if-eqz v4, :cond_122

    const/4 v3, 0x0

    const/16 v5, -0xb

    :try_start_24
    const-string v6, "Copying splits."

    .line 3
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2d
    :goto_2d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    const-string v7, "split_id"

    .line 5
    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/play/core/internal/zzaw;->zza:Landroid/content/Context;

    .line 6
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    const-string v9, "r"

    invoke-virtual {v8, v6, v9}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/play/core/internal/zzaw;->zzb:Lcom/google/android/play/core/splitcompat/zze;

    .line 7
    invoke-virtual {v8, v7}, Lcom/google/android/play/core/splitcompat/zze;->zze(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 8
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_68

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    cmp-long v13, v9, v11

    if-eqz v13, :cond_68

    goto :goto_6e

    .line 9
    :cond_68
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2d

    .line 10
    :goto_6e
    iget-object v9, p0, Lcom/google/android/play/core/internal/zzaw;->zzb:Lcom/google/android/play/core/splitcompat/zze;

    .line 11
    invoke-virtual {v9, v7}, Lcom/google/android/play/core/splitcompat/zze;->zzg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2d

    new-instance v7, Ljava/io/BufferedInputStream;

    .line 12
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_83} :catch_10c
    .catchall {:try_start_24 .. :try_end_83} :catchall_1b

    :try_start_83
    new-instance v6, Ljava/io/FileOutputStream;

    .line 13
    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_88
    .catchall {:try_start_83 .. :try_end_88} :catchall_a2

    const/16 v8, 0x1000

    :try_start_8a
    new-array v8, v8, [B

    .line 14
    :goto_8c
    invoke-virtual {v7, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    if-lez v9, :cond_96

    .line 15
    invoke-virtual {v6, v8, v3, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_95
    .catchall {:try_start_8a .. :try_end_95} :catchall_9d

    goto :goto_8c

    .line 16
    :cond_96
    :try_start_96
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a2

    :try_start_99
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_10c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_1b

    goto :goto_2d

    :catchall_9d
    move-exception p1

    .line 17
    :try_start_9e
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_a1

    :catchall_a1
    :try_start_a1
    throw p1
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a2

    :catchall_a2
    move-exception p1

    :try_start_a3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_a6
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_a6

    :catchall_a6
    :try_start_a6
    throw p1

    :cond_a7
    const-string p1, "Splits copied."

    .line 18
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_ac} :catch_10c
    .catchall {:try_start_a6 .. :try_end_ac} :catchall_1b

    :try_start_ac
    iget-object p1, p0, Lcom/google/android/play/core/internal/zzaw;->zzb:Lcom/google/android/play/core/splitcompat/zze;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/play/core/splitcompat/zze;->zzb()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1
    :try_end_b6
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_b6} :catch_105
    .catchall {:try_start_ac .. :try_end_b6} :catchall_1b

    :try_start_b6
    iget-object v6, p0, Lcom/google/android/play/core/internal/zzaw;->zzc:Lcom/google/android/play/core/internal/zzay;

    .line 20
    invoke-virtual {v6, p1}, Lcom/google/android/play/core/internal/zzay;->zzc([Ljava/io/File;)Z

    move-result v6

    if-eqz v6, :cond_f6

    iget-object v6, p0, Lcom/google/android/play/core/internal/zzaw;->zzc:Lcom/google/android/play/core/internal/zzay;

    .line 21
    invoke-virtual {v6, p1}, Lcom/google/android/play/core/internal/zzay;->zza([Ljava/io/File;)Z

    move-result p1
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c4} :catch_fc
    .catchall {:try_start_b6 .. :try_end_c4} :catchall_1b

    if-eqz p1, :cond_f6

    :try_start_c6
    iget-object p1, p0, Lcom/google/android/play/core/internal/zzaw;->zzb:Lcom/google/android/play/core/splitcompat/zze;

    .line 22
    invoke-virtual {p1}, Lcom/google/android/play/core/splitcompat/zze;->zzb()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 23
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 24
    array-length v5, p1

    :goto_d4
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_e9

    .line 25
    aget-object v6, p1, v5

    invoke-static {v6}, Lcom/google/android/play/core/splitcompat/zze;->zzm(Ljava/io/File;)V

    .line 26
    aget-object v6, p1, v5

    iget-object v7, p0, Lcom/google/android/play/core/internal/zzaw;->zzb:Lcom/google/android/play/core/splitcompat/zze;

    invoke-virtual {v7, v6}, Lcom/google/android/play/core/splitcompat/zze;->zzf(Ljava/io/File;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_e8} :catch_ef
    .catchall {:try_start_c6 .. :try_end_e8} :catchall_1b

    goto :goto_d4

    :cond_e9
    :try_start_e9
    const-string p1, "Splits verified."

    .line 27
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_114

    :catch_ef
    move-exception p1

    const-string v3, "Cannot write verified split."

    .line 28
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_112

    :cond_f6
    const-string p1, "Split verification failed."

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_102

    :catch_fc
    move-exception p1

    const-string v3, "Error verifying splits."

    .line 30
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_102
    const/16 v3, -0xb

    goto :goto_114

    :catch_105
    move-exception p1

    const-string v3, "Cannot access directory for unverified splits."

    .line 31
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_112

    :catch_10c
    move-exception p1

    const-string v3, "Error copying splits."

    .line 32
    invoke-static {v0, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_112
    const/16 v3, -0xd

    .line 33
    :goto_114
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 34
    invoke-virtual {v4}, Ljava/nio/channels/FileLock;->release()V
    :try_end_11b
    .catchall {:try_start_e9 .. :try_end_11b} :catchall_1b

    goto :goto_122

    :goto_11c
    if-eqz v2, :cond_121

    .line 35
    :try_start_11e
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_121
    .catchall {:try_start_11e .. :try_end_121} :catchall_121

    :catchall_121
    :cond_121
    :try_start_121
    throw p1

    :cond_122
    :goto_122
    if-eqz v2, :cond_127

    .line 36
    invoke-virtual {v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_127} :catch_128

    :cond_127
    return-object v3

    :catch_128
    move-exception p1

    const-string v2, "Error locking files."

    .line 37
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zzd(Ljava/util/List;Lcom/google/android/play/core/splitinstall/zzf;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/google/android/play/core/splitcompat/SplitCompat;->zze()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzaw;->zzd:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/play/core/internal/zzav;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/play/core/internal/zzav;-><init>(Lcom/google/android/play/core/internal/zzaw;Ljava/util/List;Lcom/google/android/play/core/splitinstall/zzf;)V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Ingestion should only be called in SplitCompat mode."

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
