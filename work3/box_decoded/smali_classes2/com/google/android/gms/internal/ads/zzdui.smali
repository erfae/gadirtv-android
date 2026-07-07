.class public final Lcom/google/android/gms/internal/ads/zzdui;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# static fields
.field private static final zzhsa:Ljava/lang/Object;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzclm:Landroid/content/SharedPreferences;

.field private final zzhry:Ljava/lang/String;

.field private final zzhrz:Lcom/google/android/gms/internal/ads/zzdtn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdui;->zzhsa:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgn;Lcom/google/android/gms/internal/ads/zzdtn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdui;->context:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgn;->zzv()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzhry:Ljava/lang/String;

    const-string p2, "pcvmspf"

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzclm:Landroid/content/SharedPreferences;

    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzhrz:Lcom/google/android/gms/internal/ads/zzdtn;

    return-void
.end method

.method private final zza(IJ)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzhrz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(IJ)V

    :cond_0
    return-void
.end method

.method private final zza(IJLjava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzhrz:Lcom/google/android/gms/internal/ads/zzdtn;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzdtn;->zza(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final zzaxx()Ljava/lang/String;
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzhry:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "FBAMTD"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private final zzaxy()Ljava/lang/String;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzhry:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "LATMTD"

    if-eqz v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzgp;)Ljava/lang/String;
    .locals 3

    .line 126
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgt;->zzdl()Lcom/google/android/gms/internal/ads/zzgt$zza;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgp;->zzdc()Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgt$zza;->zzav(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgt$zza;

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgp;->zzdc()Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzdh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgt$zza;->zzaw(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgt$zza;

    move-result-object v0

    .line 129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgp;->zzdc()Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzdj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt$zza;->zzdk(J)Lcom/google/android/gms/internal/ads/zzgt$zza;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgp;->zzdc()Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzdk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt$zza;->zzdl(J)Lcom/google/android/gms/internal/ads/zzgt$zza;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgp;->zzdc()Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgt;->zzdi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgt$zza;->zzdj(J)Lcom/google/android/gms/internal/ads/zzgt$zza;

    move-result-object p0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzekh$zza;->zzbhv()Lcom/google/android/gms/internal/ads/zzels;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzekh;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgt;

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeik;->zzbfg()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/util/Hex;->bytesToStringLowercase([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final zzej(I)Lcom/google/android/gms/internal/ads/zzgt;
    .locals 2

    .line 109
    sget v0, Lcom/google/android/gms/internal/ads/zzduh;->zzhru:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 110
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzclm:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdui;->zzaxy()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_0
    sget v0, Lcom/google/android/gms/internal/ads/zzduh;->zzhrv:I

    if-ne p1, v0, :cond_1

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzclm:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdui;->zzaxx()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    .line 116
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/util/Hex;->stringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzt([B)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p1

    .line 117
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeju;->zzbhf()Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v0

    .line 118
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzgt;->zzb(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeju;)Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzeks; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    return-object v1
.end method

.method private final zzhd(Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdui;->context:Landroid/content/Context;

    const-string v1, "pccache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 123
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzhry:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgp;)Z
    .locals 6

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 92
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdui;->zzhsa:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzdc()Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg()Ljava/lang/String;

    move-result-object v3

    .line 94
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdui;->zzhd(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 95
    new-instance v4, Ljava/io/File;

    const-string v5, "pcbc"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzde()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/zzduc;->zza(Ljava/io/File;[B)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 p1, 0xfb4

    .line 97
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    const/4 p1, 0x0

    .line 98
    monitor-exit v2

    return p1

    .line 99
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdui;->zzb(Lcom/google/android/gms/internal/ads/zzgp;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdui;->zzclm:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 101
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdui;->zzaxy()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0x1397

    .line 104
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    goto :goto_0

    :cond_1
    const/16 v3, 0xfb5

    .line 105
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    .line 106
    :goto_0
    monitor-exit v2

    return p1

    :catchall_0
    move-exception p1

    .line 107
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzgp;Lcom/google/android/gms/internal/ads/zzduf;)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 24
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdui;->zzhsa:Ljava/lang/Object;

    monitor-enter v4

    .line 25
    :try_start_0
    sget v5, Lcom/google/android/gms/internal/ads/zzduh;->zzhru:I

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzdui;->zzej(I)Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v5

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzdc()Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 27
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0xfae

    .line 28
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    .line 29
    monitor-exit v4

    return v7

    .line 31
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzdui;->zzhd(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 33
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    const/16 v11, 0xfaf

    const/4 v12, 0x1

    if-eqz v10, :cond_3

    const/16 v10, 0xfb7

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "1"

    goto :goto_0

    :cond_1
    const-string v13, "0"

    .line 36
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "1"

    goto :goto_1

    :cond_2
    const-string v5, "0"

    :goto_1
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, 0x5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "d:"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ",f:"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 37
    invoke-direct {v1, v10, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJLjava/lang/String;)V

    .line 38
    invoke-direct {v1, v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    goto :goto_4

    .line 40
    :cond_3
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v10

    if-nez v10, :cond_6

    const/16 v10, 0xfb8

    const-string v13, "cw:"

    .line 42
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "1"

    goto :goto_2

    :cond_4
    const-string v5, "0"

    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v13, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 43
    :goto_3
    invoke-direct {v1, v10, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJLjava/lang/String;)V

    .line 44
    invoke-direct {v1, v11, v8, v9}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v5, 0x1

    :goto_5
    if-nez v5, :cond_7

    .line 48
    monitor-exit v4

    return v7

    .line 49
    :cond_7
    invoke-direct {v1, v6}, Lcom/google/android/gms/internal/ads/zzdui;->zzhd(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 50
    new-instance v6, Ljava/io/File;

    const-string v8, "pcam.jar"

    invoke-direct {v6, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    new-instance v8, Ljava/io/File;

    const-string v9, "pcbc"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzdd()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object v9

    invoke-static {v6, v9}, Lcom/google/android/gms/internal/ads/zzduc;->zza(Ljava/io/File;[B)Z

    move-result v9

    if-nez v9, :cond_8

    const/16 v0, 0xfb0

    .line 53
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    .line 54
    monitor-exit v4

    return v7

    .line 55
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgp;->zzde()Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzduc;->zza(Ljava/io/File;[B)Z

    move-result v8

    if-nez v8, :cond_9

    const/16 v0, 0xfb1

    .line 56
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    .line 57
    monitor-exit v4

    return v7

    :cond_9
    if-eqz v0, :cond_a

    .line 58
    invoke-interface {v0, v6}, Lcom/google/android/gms/internal/ads/zzduf;->zzb(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xfb2

    .line 59
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    .line 60
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzduc;->zze(Ljava/io/File;)Z

    .line 61
    monitor-exit v4

    return v7

    .line 62
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzdui;->zzb(Lcom/google/android/gms/internal/ads/zzgp;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 64
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzdui;->zzclm:Landroid/content/SharedPreferences;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdui;->zzaxy()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzdui;->zzclm:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 66
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdui;->zzaxy()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    if-eqz v8, :cond_b

    .line 68
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdui;->zzaxx()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 69
    :cond_b
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v8, 0xfb3

    .line 71
    invoke-direct {v1, v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    :cond_c
    if-nez v0, :cond_d

    .line 74
    monitor-exit v4

    return v7

    .line 76
    :cond_d
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    sget v5, Lcom/google/android/gms/internal/ads/zzduh;->zzhru:I

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzdui;->zzej(I)Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 79
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_e
    sget v5, Lcom/google/android/gms/internal/ads/zzduh;->zzhrv:I

    invoke-direct {v1, v5}, Lcom/google/android/gms/internal/ads/zzdui;->zzej(I)Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 82
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_f
    new-instance v5, Ljava/io/File;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzdui;->context:Landroid/content/Context;

    const-string v8, "pccache"

    invoke-virtual {v6, v8, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzdui;->zzhry:Ljava/lang/String;

    invoke-direct {v5, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    array-length v6, v5

    :goto_6
    if-ge v7, v6, :cond_11

    aget-object v8, v5, v7

    .line 85
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 86
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzduc;->zze(Ljava/io/File;)Z

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_11
    const/16 v0, 0x1396

    .line 88
    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    .line 89
    monitor-exit v4

    return v12

    :catchall_0
    move-exception v0

    .line 90
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzp(I)Lcom/google/android/gms/internal/ads/zzdua;
    .locals 8

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdui;->zzhsa:Ljava/lang/Object;

    monitor-enter v2

    .line 10
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdui;->zzej(I)Lcom/google/android/gms/internal/ads/zzgt;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0xfb6

    .line 12
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    const/4 p1, 0x0

    .line 13
    monitor-exit v2

    return-object p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgt;->zzdg()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/zzdui;->zzhd(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 15
    new-instance v4, Ljava/io/File;

    const-string v5, "pcam.jar"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 17
    new-instance v4, Ljava/io/File;

    const-string v5, "pcam"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    :cond_1
    new-instance v5, Ljava/io/File;

    const-string v6, "pcbc"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 19
    new-instance v6, Ljava/io/File;

    const-string v7, "pcopt"

    invoke-direct {v6, v3, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x1398

    .line 20
    invoke-direct {p0, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzdui;->zza(IJ)V

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdua;

    invoke-direct {v0, p1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdua;-><init>(Lcom/google/android/gms/internal/ads/zzgt;Ljava/io/File;Ljava/io/File;Ljava/io/File;)V

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception p1

    .line 22
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
