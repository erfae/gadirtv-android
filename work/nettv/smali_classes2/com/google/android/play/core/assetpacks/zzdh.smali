.class final Lcom/google/android/play/core/assetpacks/zzdh;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field private static final zza:Lcom/google/android/play/core/internal/zzag;


# instance fields
.field private final zzb:Lcom/google/android/play/core/assetpacks/zzde;

.field private final zzc:Lcom/google/android/play/core/assetpacks/zzbh;

.field private final zzd:Lcom/google/android/play/core/assetpacks/zzbu;

.field private final zze:Lcom/google/android/play/core/common/zza;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/zzag;

    const-string v1, "ExtractorTaskFinder"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/play/core/assetpacks/zzde;Lcom/google/android/play/core/assetpacks/zzbh;Lcom/google/android/play/core/assetpacks/zzbu;Lcom/google/android/play/core/common/zza;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/zzdh;->zzd:Lcom/google/android/play/core/assetpacks/zzbu;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/zzdh;->zze:Lcom/google/android/play/core/common/zza;

    return-void
.end method

.method private final zzb(Lcom/google/android/play/core/assetpacks/zzdb;Lcom/google/android/play/core/assetpacks/zzdc;)Z
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/play/core/assetpacks/zzen;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v0, p1, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v2, v0, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v3, p1, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v4, v0, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v6, p2, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/play/core/assetpacks/zzen;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Ljava/lang/String;IJLjava/lang/String;)V

    .line 2
    invoke-virtual {v7}, Lcom/google/android/play/core/assetpacks/zzen;->zzm()Z

    move-result p1

    return p1
.end method

.method private static zzc(Lcom/google/android/play/core/assetpacks/zzdc;)Z
    .locals 2

    iget p0, p0, Lcom/google/android/play/core/assetpacks/zzdc;->zzf:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/play/core/assetpacks/zzdg;
    .locals 34
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzde;->zzj()V

    new-instance v2, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzde;->zzg()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 4
    iget-object v4, v3, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v4, v4, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/zzbg;->zzb(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    const/4 v3, 0x0

    goto/16 :goto_c

    .line 7
    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zze:Lcom/google/android/play/core/common/zza;

    const-string v4, "assetOnlyUpdates"

    .line 8
    invoke-virtual {v0, v4}, Lcom/google/android/play/core/common/zza;->zza(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzbh;->zzt()Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 11
    iget-object v9, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    move-object v10, v0

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_3

    .line 12
    iget-object v10, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-wide v10, v10, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v7, v6, [Ljava/lang/Object;

    .line 13
    iget v9, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    .line 14
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v4

    iget-object v9, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    aput-object v9, v7, v5

    const-string v9, "Found promote pack task for session %s with pack %s."

    .line 15
    invoke-virtual {v0, v9, v7}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzei;

    .line 16
    iget v11, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v7, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v12, v7, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 17
    invoke-virtual {v7, v12}, Lcom/google/android/play/core/assetpacks/zzbh;->zza(Ljava/lang/String;)I

    move-result v13

    iget v14, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-object v7, v8, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-wide v7, v7, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    move-object v10, v0

    move-wide v15, v7

    invoke-direct/range {v10 .. v16}, Lcom/google/android/play/core/assetpacks/zzei;-><init>(ILjava/lang/String;IIJ)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_17

    .line 18
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzdb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v8, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 19
    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v10, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v11, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v12, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    invoke-virtual {v8, v10, v11, v12, v13}, Lcom/google/android/play/core/assetpacks/zzbh;->zzb(Ljava/lang/String;IJ)I

    move-result v8

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzf:Ljava/util/List;

    .line 20
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v8, v9, :cond_6

    :try_start_3
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v8, v6, [Ljava/lang/Object;

    .line 21
    iget v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    .line 22
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    aput-object v9, v8, v5

    const-string v9, "Found final move task for session %s with pack %s."

    .line 23
    invoke-virtual {v0, v9, v8}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdw;

    .line 24
    iget v11, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v8, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v12, v8, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v13, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v14, v8, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v7, v8, Lcom/google/android/play/core/assetpacks/zzda;->zzc:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v16, v7

    invoke-direct/range {v10 .. v16}, Lcom/google/android/play/core/assetpacks/zzdw;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    .line 25
    new-instance v2, Lcom/google/android/play/core/assetpacks/zzck;

    new-array v3, v6, [Ljava/lang/Object;

    .line 26
    iget v6, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    .line 27
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    iget-object v4, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v4, v4, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    aput-object v4, v3, v5

    const-string v4, "Failed to check number of completed merges for session %s, pack %s"

    .line 28
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/play/core/assetpacks/zzck;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_17

    .line 29
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 30
    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v10, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v10}, Lcom/google/android/play/core/assetpacks/zzbg;->zzb(I)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzf:Ljava/util/List;

    .line 31
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/play/core/assetpacks/zzdc;

    iget-object v11, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 32
    iget-object v12, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v13, v12, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v14, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v5, v12, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v15, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    move-object v12, v13

    move v13, v14

    move-object/from16 v16, v15

    move-wide v14, v5

    .line 33
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/play/core/assetpacks/zzbh;->zzq(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 34
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v5, v8, [Ljava/lang/Object;

    .line 35
    iget v6, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    .line 36
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v6, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    const/4 v9, 0x1

    aput-object v6, v5, v9

    iget-object v6, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const-string v6, "Found merge task for session %s with pack %s and slice %s."

    .line 37
    invoke-virtual {v0, v6, v5}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzdt;

    .line 38
    iget v5, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v6, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v6, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v7, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v11, v6, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v6, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v20, v5

    move-object/from16 v21, v9

    move/from16 v22, v7

    move-wide/from16 v23, v11

    move-object/from16 v25, v6

    invoke-direct/range {v19 .. v25}, Lcom/google/android/play/core/assetpacks/zzdt;-><init>(ILjava/lang/String;IJLjava/lang/String;)V

    goto :goto_4

    :cond_9
    const/4 v5, 0x1

    const/4 v6, 0x2

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_17

    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 40
    iget-object v6, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v7, v6, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v7}, Lcom/google/android/play/core/assetpacks/zzbg;->zzb(I)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v6, v6, Lcom/google/android/play/core/assetpacks/zzda;->zzf:Ljava/util/List;

    .line 41
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzdc;

    .line 42
    invoke-direct {v1, v5, v7}, Lcom/google/android/play/core/assetpacks/zzdh;->zzb(Lcom/google/android/play/core/assetpacks/zzdb;Lcom/google/android/play/core/assetpacks/zzdc;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v10, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v9, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v11, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v12, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v13, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v15, v7, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    .line 43
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/play/core/assetpacks/zzbh;->zzp(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 44
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v6, v8, [Ljava/lang/Object;

    .line 45
    iget v9, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    .line 46
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v4

    iget-object v9, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v6, v10

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v6, v10

    const-string v9, "Found verify task for session %s with pack %s and slice %s."

    .line 47
    invoke-virtual {v0, v9, v6}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzeq;

    .line 48
    iget v6, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v9, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v10, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v5, v5, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v11, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    iget-object v7, v7, Lcom/google/android/play/core/assetpacks/zzdc;->zzb:Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v20, v6

    move-object/from16 v21, v10

    move/from16 v22, v5

    move-wide/from16 v23, v11

    move-object/from16 v25, v9

    move-object/from16 v26, v7

    invoke-direct/range {v19 .. v26}, Lcom/google/android/play/core/assetpacks/zzeq;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_d
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_17

    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 50
    iget-object v0, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v9, v0, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v9}, Lcom/google/android/play/core/assetpacks/zzbg;->zzb(I)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v0, v0, Lcom/google/android/play/core/assetpacks/zzda;->zzf:Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_f
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/play/core/assetpacks/zzdc;

    .line 52
    invoke-static {v10}, Lcom/google/android/play/core/assetpacks/zzdh;->zzc(Lcom/google/android/play/core/assetpacks/zzdc;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 53
    new-instance v0, Lcom/google/android/play/core/assetpacks/zzen;

    iget-object v11, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v12, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v13, v12, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v14, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    move-object/from16 v16, v9

    iget-wide v8, v12, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v12, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v20, v11

    move-object/from16 v21, v13

    move/from16 v22, v14

    move-wide/from16 v23, v8

    move-object/from16 v25, v12

    invoke-direct/range {v19 .. v25}, Lcom/google/android/play/core/assetpacks/zzen;-><init>(Lcom/google/android/play/core/assetpacks/zzbh;Ljava/lang/String;IJLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    :try_start_4
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzen;->zza()I

    move-result v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v8, v0

    .line 55
    :try_start_5
    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v9, 0x1

    new-array v11, v9, [Ljava/lang/Object;

    aput-object v8, v11, v4

    const-string v8, "Slice checkpoint corrupt, restarting extraction. %s"

    .line 56
    invoke-virtual {v0, v8, v11}, Lcom/google/android/play/core/internal/zzag;->zzb(Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v0, 0x0

    :goto_7
    const/4 v8, -0x1

    if-eq v0, v8, :cond_10

    .line 57
    iget-object v8, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zzd:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/play/core/assetpacks/zzcz;

    iget-boolean v8, v8, Lcom/google/android/play/core/assetpacks/zzcz;->zza:Z

    if-eqz v8, :cond_10

    sget-object v5, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    .line 58
    iget v9, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zze:I

    .line 59
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    iget v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    const/4 v11, 0x2

    aput-object v9, v8, v11

    iget-object v9, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v9, v8, v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "Found extraction task using compression format %s for session %s, pack %s, slice %s, chunk %s."

    .line 60
    invoke-virtual {v5, v9, v8}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v5, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzd:Lcom/google/android/play/core/assetpacks/zzbu;

    .line 61
    iget v8, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget-object v11, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    .line 62
    invoke-virtual {v5, v8, v9, v11, v0}, Lcom/google/android/play/core/assetpacks/zzbu;->zza(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v33

    new-instance v5, Lcom/google/android/play/core/assetpacks/zzce;

    .line 63
    iget v8, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v9, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v11, v9, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget v12, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-wide v13, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget-object v9, v9, Lcom/google/android/play/core/assetpacks/zzda;->zzc:Ljava/lang/String;

    iget-object v15, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    iget v3, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zze:I

    iget-object v10, v10, Lcom/google/android/play/core/assetpacks/zzdc;->zzd:Ljava/util/List;

    .line 64
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v29

    iget-object v7, v7, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    move-object/from16 v16, v5

    iget-wide v4, v7, Lcom/google/android/play/core/assetpacks/zzda;->zze:J

    iget v7, v7, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    move-object/from16 v19, v16

    move/from16 v20, v8

    move-object/from16 v21, v11

    move/from16 v22, v12

    move-wide/from16 v23, v13

    move-object/from16 v25, v9

    move-object/from16 v26, v15

    move/from16 v27, v3

    move/from16 v28, v0

    move-wide/from16 v30, v4

    move/from16 v32, v7

    invoke-direct/range {v19 .. v33}, Lcom/google/android/play/core/assetpacks/zzce;-><init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;IIIJILjava/io/InputStream;)V

    move-object/from16 v5, v16

    goto :goto_8

    :cond_10
    move-object/from16 v9, v16

    const/4 v4, 0x0

    const/4 v8, 0x3

    goto/16 :goto_6

    :cond_11
    const/4 v5, 0x0

    :goto_8
    if-nez v5, :cond_16

    .line 65
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/play/core/assetpacks/zzdb;

    .line 66
    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget v4, v3, Lcom/google/android/play/core/assetpacks/zzda;->zzd:I

    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/zzbg;->zzb(I)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v3, v3, Lcom/google/android/play/core/assetpacks/zzda;->zzf:Ljava/util/List;

    .line 67
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/zzdc;

    .line 68
    invoke-static {v4}, Lcom/google/android/play/core/assetpacks/zzdh;->zzc(Lcom/google/android/play/core/assetpacks/zzdc;)Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/zzdc;->zzd:Ljava/util/List;

    const/4 v7, 0x0

    .line 69
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/play/core/assetpacks/zzcz;

    iget-boolean v5, v5, Lcom/google/android/play/core/assetpacks/zzcz;->zza:Z

    if-eqz v5, :cond_12

    .line 70
    invoke-direct {v1, v2, v4}, Lcom/google/android/play/core/assetpacks/zzdh;->zzb(Lcom/google/android/play/core/assetpacks/zzdb;Lcom/google/android/play/core/assetpacks/zzdc;)Z

    move-result v5

    if-nez v5, :cond_12

    sget-object v0, Lcom/google/android/play/core/assetpacks/zzdh;->zza:Lcom/google/android/play/core/internal/zzag;

    new-array v3, v6, [Ljava/lang/Object;

    .line 71
    iget v5, v4, Lcom/google/android/play/core/assetpacks/zzdc;->zzf:I

    .line 72
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    iget v5, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v3, v7

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v5, v3, v8

    iget-object v5, v4, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    const/4 v9, 0x3

    aput-object v5, v3, v9

    const-string v5, "Found patch slice task using patch format %s for session %s, pack %s, slice %s."

    .line 73
    invoke-virtual {v0, v5, v3}, Lcom/google/android/play/core/internal/zzag;->zza(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzd:Lcom/google/android/play/core/assetpacks/zzbu;

    .line 74
    iget v3, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget-object v6, v4, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    const/4 v10, 0x0

    .line 75
    invoke-virtual {v0, v3, v5, v6, v10}, Lcom/google/android/play/core/assetpacks/zzbu;->zza(ILjava/lang/String;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v24

    new-instance v0, Lcom/google/android/play/core/assetpacks/zzef;

    .line 76
    iget v12, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zza:I

    iget-object v3, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v13, v3, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    .line 77
    invoke-virtual {v3, v13}, Lcom/google/android/play/core/assetpacks/zzbh;->zza(Ljava/lang/String;)I

    move-result v14

    iget-object v3, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzc:Lcom/google/android/play/core/assetpacks/zzbh;

    iget-object v5, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-object v5, v5, Lcom/google/android/play/core/assetpacks/zzda;->zza:Ljava/lang/String;

    .line 78
    invoke-virtual {v3, v5}, Lcom/google/android/play/core/assetpacks/zzbh;->zzc(Ljava/lang/String;)J

    move-result-wide v15

    iget v3, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzb:I

    iget-object v2, v2, Lcom/google/android/play/core/assetpacks/zzdb;->zzc:Lcom/google/android/play/core/assetpacks/zzda;

    iget-wide v5, v2, Lcom/google/android/play/core/assetpacks/zzda;->zzb:J

    iget v2, v4, Lcom/google/android/play/core/assetpacks/zzdc;->zzf:I

    iget-object v7, v4, Lcom/google/android/play/core/assetpacks/zzdc;->zza:Ljava/lang/String;

    iget-wide v8, v4, Lcom/google/android/play/core/assetpacks/zzdc;->zzc:J

    move-object v11, v0

    move/from16 v17, v3

    move-wide/from16 v18, v5

    move/from16 v20, v2

    move-object/from16 v21, v7

    move-wide/from16 v22, v8

    invoke-direct/range {v11 .. v24}, Lcom/google/android/play/core/assetpacks/zzef;-><init>(ILjava/lang/String;IJIJILjava/lang/String;JLjava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_a

    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_14
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_15

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    goto :goto_d

    .line 79
    :cond_15
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzde;->zzl()V

    const/4 v2, 0x0

    return-object v2

    :cond_16
    iget-object v0, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    move-object v3, v5

    :goto_c
    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/zzde;->zzl()V

    return-object v3

    :cond_17
    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    :goto_d
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/zzde;->zzl()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lcom/google/android/play/core/assetpacks/zzdh;->zzb:Lcom/google/android/play/core/assetpacks/zzde;

    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/zzde;->zzl()V

    .line 80
    throw v0
.end method
