.class final Lcom/google/android/play/core/assetpacks/zzcf;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:[B

.field private final zzc:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzd:Lcom/google/android/play/core/internal/zzco;

.field private final zze:Lcom/google/android/play/core/internal/zzco;

.field private final zzf:Lcom/google/android/play/core/assetpacks/zzco;

.field private final zzg:Lcom/google/android/play/core/assetpacks/zzeb;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "ExtractChunkTaskHandler"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/internal/zzco;Lcom/google/android/play/core/assetpacks/zzco;Lcom/google/android/play/core/assetpacks/zzeb;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzd:Lcom/google/android/play/core/internal/zzco;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zze:Lcom/google/android/play/core/internal/zzco;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzf:Lcom/google/android/play/core/assetpacks/zzco;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    return-void
.end method

.method private final zzb(Lcom/google/android/play/core/assetpacks/zzce;)Ljava/io/File;
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v1, p1, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    iget v2, p1, Lcom/google/android/play/core/assetpacks/zzce;->zza:I

    iget-wide v3, p1, Lcom/google/android/play/core/assetpacks/zzce;->zzb:J

    iget-object v5, p1, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzp(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_17
    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/play/core/assetpacks/zzce;)V
    .registers 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 1
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzen;

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v11, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    iget v12, v2, Lcom/google/android/play/core/assetpacks/zzce;->zza:I

    iget-wide v13, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzb:J

    iget-object v15, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    move-wide v7, v13

    move-object v9, v15

    invoke-direct/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/zzen;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Ljava/lang/String;IJLjava/lang/String;)V

    move-object v3, v10

    move-object v4, v11

    move v5, v12

    move-wide v6, v13

    move-object v8, v15

    .line 2
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/play/core/assetpacks/zzbh;->zzo(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2b

    .line 4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_2b
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_2f
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzj:Ljava/io/InputStream;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzce;->zze:I

    const/16 v15, 0x2000

    if-eq v4, v13, :cond_39

    move-object v9, v3

    goto :goto_3f

    :cond_39
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    .line 5
    invoke-direct {v4, v3, v15}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_354

    move-object v9, v4

    :goto_3f
    :try_start_3f
    iget v3, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    const/16 v16, 0x0

    if-lez v3, :cond_18c

    .line 6
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzen;->zzb()Lcom/google/android/play/core/assetpacks/zzem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zzb()I

    move-result v4

    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    add-int/lit8 v6, v5, -0x1

    if-ne v4, v6, :cond_16b

    .line 7
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zza()I

    move-result v4

    if-eq v4, v13, :cond_e5

    if-eq v4, v12, :cond_9c

    if-ne v4, v11, :cond_82

    .line 8
    sget-object v4, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v5, "Resuming central directory from last chunk."

    new-array v6, v14, [Ljava/lang/Object;

    .line 9
    invoke-virtual {v4, v5, v6}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zzc()J

    move-result-wide v3

    .line 10
    invoke-virtual {v0, v9, v3, v4}, Lcom/google/android/play/core/assetpacks/zzen;->zzd(Ljava/io/InputStream;J)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/zzce;->zza()Z

    move-result v3

    if-eqz v3, :cond_78

    move-object v10, v9

    :goto_74
    move-object/from16 v9, v16

    goto/16 :goto_18e

    .line 11
    :cond_78
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v3, "Chunk has ended twice during central directory. This should not be possible with chunk sizes of 50MB."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 12
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 13
    :cond_82
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zza()I

    move-result v3

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    const-string v3, "Slice checkpoint file corrupt. Unexpected FileExtractionStatus %s."

    .line 15
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 16
    :cond_9c
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v4, "Resuming zip entry from last chunk during local file header."

    new-array v5, v14, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v3, v4, v5}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzce;->zza:I

    iget-wide v6, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzb:J

    iget-object v8, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    .line 18
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v11, Ljava/io/File;

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v18, v5

    move-wide/from16 v19, v6

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/google/android/play/core/assetpacks/zzbh;->zzo(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v3

    const-string v4, "checkpoint_ext.dat"

    invoke-direct {v11, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_db

    .line 21
    new-instance v3, Ljava/io/SequenceInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v9}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    move-object v10, v9

    move-object v9, v3

    goto/16 :goto_18e

    .line 22
    :cond_db
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v3, "Checkpoint extension file not found."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 23
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 24
    :cond_e5
    sget-object v4, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v13, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zze()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    const-string v6, "Resuming zip entry from last chunk during file %s."

    .line 25
    invoke-virtual {v4, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zze()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_160

    .line 28
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    .line 29
    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zzc()J

    move-result-wide v6

    .line 30
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zzd()J

    move-result-wide v6

    :goto_115
    const-wide/16 v10, 0x2000

    .line 31
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 32
    invoke-virtual {v9, v8, v14, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lez v8, :cond_12d

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 33
    invoke-virtual {v5, v10, v14, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_12d
    int-to-long v10, v8

    sub-long v10, v6, v10

    const-wide/16 v6, 0x0

    cmp-long v18, v10, v6

    if-lez v18, :cond_13b

    if-gtz v8, :cond_139

    goto :goto_13b

    :cond_139
    move-wide v6, v10

    goto :goto_115

    .line 34
    :cond_13b
    :goto_13b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    .line 35
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-eq v8, v3, :cond_18c

    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v5, "Chunk has ended while resuming the previous chunks file content."

    new-array v8, v14, [Ljava/lang/Object;

    .line 36
    invoke-virtual {v3, v5, v8}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 37
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    iget v8, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I
    :try_end_153
    .catchall {:try_start_3f .. :try_end_153} :catchall_34e

    move-object v3, v0

    move-wide v5, v6

    move/from16 v18, v8

    move-wide v7, v10

    move-object v10, v9

    move/from16 v9, v18

    .line 38
    :try_start_15b
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/zzen;->zzg(Ljava/lang/String;JJI)V

    goto/16 :goto_74

    :cond_160
    move-object v10, v9

    .line 39
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v3, "Partial file specified in checkpoint does not exist. Corrupt directory."

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    .line 40
    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_16b
    move-object v10, v9

    .line 41
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v4, "Trying to resume with chunk number %s when previously processed chunk was number %s."

    new-array v6, v12, [Ljava/lang/Object;

    .line 42
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v14

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzem;->zzb()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v13

    .line 43
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_18c
    move-object v10, v9

    move-object v9, v10

    :goto_18e
    if-eqz v9, :cond_29f

    .line 44
    new-instance v3, Lcom/google/android/play/core/assetpacks/zzbw;

    .line 45
    invoke-direct {v3, v9}, Lcom/google/android/play/core/assetpacks/zzbw;-><init>(Ljava/io/InputStream;)V

    .line 46
    invoke-direct/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/zzcf;->zzb(Lcom/google/android/play/core/assetpacks/zzce;)Ljava/io/File;

    move-result-object v4

    .line 47
    :cond_199
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zzb()Lcom/google/android/play/core/assetpacks/zzet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zze()Z

    move-result v6

    if-nez v6, :cond_1f0

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zzc()Z

    move-result v6

    if-nez v6, :cond_1f0

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzh()Z

    move-result v6

    if-eqz v6, :cond_1e9

    .line 48
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzg()Z

    move-result v6

    if-nez v6, :cond_1e9

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzf()[B

    move-result-object v6

    .line 49
    invoke-virtual {v0, v6}, Lcom/google/android/play/core/assetpacks/zzen;->zzj([B)V

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzc()Ljava/lang/String;

    move-result-object v7

    .line 50
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    new-instance v7, Ljava/io/FileOutputStream;

    .line 52
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 53
    invoke-virtual {v3, v6, v14, v15}, Lcom/google/android/play/core/assetpacks/zzbw;->read([BII)I

    move-result v6

    :goto_1d7
    if-lez v6, :cond_1e5

    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 54
    invoke-virtual {v7, v8, v14, v6}, Ljava/io/FileOutputStream;->write([BII)V

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzb:[B

    .line 55
    invoke-virtual {v3, v6, v14, v15}, Lcom/google/android/play/core/assetpacks/zzbw;->read([BII)I

    move-result v6

    goto :goto_1d7

    .line 56
    :cond_1e5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1f0

    .line 57
    :cond_1e9
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzf()[B

    move-result-object v6

    .line 58
    invoke-virtual {v0, v6, v3}, Lcom/google/android/play/core/assetpacks/zzen;->zzk([BLjava/io/InputStream;)V

    .line 59
    :cond_1f0
    :goto_1f0
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zzd()Z

    move-result v6

    if-nez v6, :cond_1fc

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zzc()Z

    move-result v6

    if-eqz v6, :cond_199

    :cond_1fc
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zzc()Z

    move-result v4

    if-eqz v4, :cond_212

    sget-object v4, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v6, "Writing central directory metadata."

    new-array v7, v14, [Ljava/lang/Object;

    .line 60
    invoke-virtual {v4, v6, v7}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzf()[B

    move-result-object v4

    .line 61
    invoke-virtual {v0, v4, v9}, Lcom/google/android/play/core/assetpacks/zzen;->zzk([BLjava/io/InputStream;)V

    :cond_212
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/zzce;->zza()Z

    move-result v4

    if-nez v4, :cond_29f

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zze()Z

    move-result v4

    if-eqz v4, :cond_231

    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v4, "Writing slice checkpoint for partial local file header."

    new-array v6, v14, [Ljava/lang/Object;

    .line 62
    invoke-virtual {v3, v4, v6}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzf()[B

    move-result-object v3

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 63
    invoke-virtual {v0, v3, v4}, Lcom/google/android/play/core/assetpacks/zzen;->zzh([BI)V

    goto :goto_29f

    .line 64
    :cond_231
    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zzc()Z

    move-result v4

    if-eqz v4, :cond_246

    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v4, "Writing slice checkpoint for central directory."

    new-array v5, v14, [Ljava/lang/Object;

    .line 65
    invoke-virtual {v3, v4, v5}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v3, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 66
    invoke-virtual {v0, v3}, Lcom/google/android/play/core/assetpacks/zzen;->zzf(I)V

    goto :goto_29f

    :cond_246
    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zza()I

    move-result v4

    if-nez v4, :cond_27c

    sget-object v4, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v6, "Writing slice checkpoint for partial file."

    new-array v7, v14, [Ljava/lang/Object;

    .line 67
    invoke-virtual {v4, v6, v7}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v4, Ljava/io/File;

    .line 68
    invoke-direct/range {p0 .. p1}, Lcom/google/android/play/core/assetpacks/zzcf;->zzb(Lcom/google/android/play/core/assetpacks/zzce;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzc()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/play/core/assetpacks/zzet;->zzb()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zza()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 69
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_274

    goto :goto_28d

    .line 70
    :cond_274
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzck;

    const-string v3, "Partial file is of unexpected size."

    .line 71
    invoke-direct {v0, v3}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_27c
    sget-object v4, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const-string v5, "Writing slice checkpoint for partial unextractable file."

    new-array v6, v14, [Ljava/lang/Object;

    .line 73
    invoke-virtual {v4, v5, v6}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 74
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzen;->zzc()Ljava/io/File;

    move-result-object v4

    .line 75
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 76
    :goto_28d
    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/play/core/assetpacks/zzbw;->zza()J

    move-result-wide v7

    iget v9, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    move-object v3, v0

    .line 77
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/play/core/assetpacks/zzen;->zzg(Ljava/lang/String;JJI)V
    :try_end_29b
    .catchall {:try_start_15b .. :try_end_29b} :catchall_29c

    goto :goto_29f

    :catchall_29c
    move-exception v0

    goto/16 :goto_350

    .line 78
    :cond_29f
    :goto_29f
    :try_start_29f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_2a2
    .catch Ljava/io/IOException; {:try_start_29f .. :try_end_2a2} :catch_354

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/play/core/assetpacks/zzce;->zza()Z

    move-result v3

    if-eqz v3, :cond_2c8

    :try_start_2a8
    iget v3, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 79
    invoke-virtual {v0, v3}, Lcom/google/android/play/core/assetpacks/zzen;->zzi(I)V
    :try_end_2ad
    .catch Ljava/io/IOException; {:try_start_2a8 .. :try_end_2ad} :catch_2ae

    goto :goto_2c8

    :catch_2ae
    move-exception v0

    .line 80
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v4, v13, [Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    const-string v5, "Writing extraction finished checkpoint failed with %s."

    invoke-virtual {v3, v5, v4}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzck;

    iget v2, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    const-string v4, "Writing extraction finished checkpoint failed."

    .line 82
    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3

    .line 83
    :cond_2c8
    :goto_2c8
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 84
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    aput-object v4, v3, v13

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    aput-object v4, v3, v12

    iget v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "Extraction finished for chunk %s of slice %s of pack %s of session %s."

    .line 85
    invoke-virtual {v0, v4, v3}, Lcom/google/android/play/core/internal/zzag;->zzd(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzd:Lcom/google/android/play/core/internal/zzco;

    .line 86
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzy;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    iget-object v4, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 87
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/google/android/play/core/assetpacks/zzy;->zzg(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_2fe
    iget-object v0, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzj:Ljava/io/InputStream;

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_303
    .catch Ljava/io/IOException; {:try_start_2fe .. :try_end_303} :catch_304

    goto :goto_31e

    .line 89
    :catch_304
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget v3, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 90
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    aput-object v3, v4, v13

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    aput-object v3, v4, v12

    const-string v3, "Could not close file for chunk %s of slice %s of pack %s."

    .line 91
    invoke-virtual {v0, v3, v4}, Lcom/google/android/play/core/internal/zzag;->zze(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 92
    :goto_31e
    iget v0, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzi:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_34d

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zze:Lcom/google/android/play/core/internal/zzco;

    .line 93
    invoke-interface {v0}, Lcom/google/android/play/core/internal/zzco;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/play/core/assetpacks/zzbb;

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    iget-wide v7, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzh:J

    const/4 v4, 0x3

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzf:Lcom/google/android/play/core/assetpacks/zzco;

    .line 94
    invoke-virtual {v6, v3, v2}, Lcom/google/android/play/core/assetpacks/zzco;->zzb(Ljava/lang/String;Lcom/google/android/play/core/assetpacks/zzdg;)D

    move-result-wide v9

    const/4 v11, 0x1

    iget-object v12, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzc:Ljava/lang/String;

    iget-object v6, v1, Lcom/google/android/play/core/assetpacks/zzcf;->zzg:Lcom/google/android/play/core/assetpacks/zzeb;

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    .line 95
    invoke-virtual {v6, v2}, Lcom/google/android/play/core/assetpacks/zzeb;->zza(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v7

    .line 96
    invoke-static/range {v2 .. v13}, Lcom/google/android/play/core/assetpacks/AssetPackState;->zzb(Ljava/lang/String;IIJJDILjava/lang/String;Ljava/lang/String;)Lcom/google/android/play/core/assetpacks/AssetPackState;

    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Lcom/google/android/play/core/assetpacks/zzbb;->zzd(Lcom/google/android/play/core/assetpacks/AssetPackState;)V

    :cond_34d
    return-void

    :catchall_34e
    move-exception v0

    move-object v10, v9

    .line 98
    :goto_350
    :try_start_350
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_353
    .catchall {:try_start_350 .. :try_end_353} :catchall_353

    :catchall_353
    :try_start_353
    throw v0
    :try_end_354
    .catch Ljava/io/IOException; {:try_start_353 .. :try_end_354} :catch_354

    :catch_354
    move-exception v0

    .line 99
    sget-object v3, Lcom/google/android/play/core/assetpacks/zzcf;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v4, v13, [Ljava/lang/Object;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    const-string v5, "IOException during extraction %s."

    invoke-virtual {v3, v5, v4}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Lcom/google/android/play/core/assetpacks/zzck;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzf:I

    .line 101
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v14

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/zzce;->zzd:Ljava/lang/String;

    aput-object v5, v4, v13

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzl:Ljava/lang/String;

    aput-object v5, v4, v12

    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string v5, "Error extracting chunk %s of slice %s of pack %s of session %s."

    .line 102
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v2, v2, Lcom/google/android/play/core/assetpacks/zzdg;->zzk:I

    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3
.end method
