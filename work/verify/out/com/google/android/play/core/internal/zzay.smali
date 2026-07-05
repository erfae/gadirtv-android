.class public final Lcom/google/android/play/core/internal/zzay;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# instance fields
.field private final zza:Lcom/google/android/play/core/splitcompat/zze;

.field private final zzb:Lcom/google/android/play/core/internal/zzau;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/play/core/internal/zzax;

.field private zze:Landroid/content/pm/PackageInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/splitcompat/zze;Lcom/google/android/play/core/internal/zzau;)V
    .registers 6

    new-instance v0, Lcom/google/android/play/core/internal/zzax;

    new-instance v1, Lcom/google/android/play/core/splitcompat/zza;

    invoke-direct {v1, p2}, Lcom/google/android/play/core/splitcompat/zza;-><init>(Lcom/google/android/play/core/splitcompat/zze;)V

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/zzax;-><init>(Lcom/google/android/play/core/splitcompat/zza;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/play/core/internal/zzay;->zza:Lcom/google/android/play/core/splitcompat/zze;

    iput-object p3, p0, Lcom/google/android/play/core/internal/zzay;->zzb:Lcom/google/android/play/core/internal/zzau;

    iput-object p1, p0, Lcom/google/android/play/core/internal/zzay;->zzc:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/play/core/internal/zzay;->zzd:Lcom/google/android/play/core/internal/zzax;

    return-void
.end method

.method private final zzd()Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzay;->zze:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1b

    :try_start_4
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzay;->zzc:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/zzay;->zzc:Landroid/content/Context;

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/internal/zzay;->zze:Landroid/content/pm/PackageInfo;
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_18} :catch_19

    goto :goto_1b

    :catch_19
    const/4 v0, 0x0

    return-object v0

    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/google/android/play/core/internal/zzay;->zze:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method private static zze(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "X509"

    .line 1
    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 2
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_15
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    const-string v0, "SplitCompat"

    const-string v1, "Cannot decode certificate."

    .line 3
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final zza([Ljava/io/File;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzay;->zzd()Landroid/content/pm/PackageInfo;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_f

    .line 2
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v0

    goto :goto_12

    .line 3
    :cond_f
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v0, v0

    .line 4
    :goto_12
    const-class v2, Landroid/content/res/AssetManager;

    .line 5
    invoke-static {v2}, Lcom/google/android/play/core/internal/zzbw;->zzc(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/AssetManager;

    .line 6
    array-length v3, p1

    :cond_1b
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_32

    iget-object v4, p0, Lcom/google/android/play/core/internal/zzay;->zzd:Lcom/google/android/play/core/internal/zzax;

    .line 7
    aget-object v5, p1, v3

    invoke-virtual {v4, v2, v5}, Lcom/google/android/play/core/internal/zzax;->zzb(Landroid/content/res/AssetManager;Ljava/io/File;)V

    iget-object v4, p0, Lcom/google/android/play/core/internal/zzay;->zzd:Lcom/google/android/play/core/internal/zzax;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/play/core/internal/zzax;->zza()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1b

    const/4 p1, 0x0

    return p1

    :cond_32
    const/4 p1, 0x1

    return p1
.end method

.method public final zzb(Ljava/util/List;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "split_id"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/internal/zzay;->zza:Lcom/google/android/play/core/splitcompat/zze;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/play/core/splitcompat/zze;->zzg(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_24
    const/4 p1, 0x1

    return p1
.end method

.method public final zzc([Ljava/io/File;)Z
    .registers 14

    const-string v0, " is not signed."

    const-string v1, "Downloaded split "

    .line 1
    invoke-direct {p0}, Lcom/google/android/play/core/internal/zzay;->zzd()Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    .line 2
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v5, :cond_11

    goto :goto_2a

    .line 3
    :cond_11
    new-instance v3, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_1a
    if-ge v6, v5, :cond_2a

    aget-object v7, v2, v6

    .line 6
    invoke-static {v7}, Lcom/google/android/play/core/internal/zzay;->zze(Landroid/content/pm/Signature;)Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_27

    .line 7
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_2a
    :goto_2a
    const-string v2, "SplitCompat"

    if-eqz v3, :cond_d2

    .line 8
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_36

    goto/16 :goto_d2

    .line 9
    :cond_36
    array-length v5, p1

    :cond_37
    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_d0

    .line 10
    aget-object v6, p1, v5

    .line 11
    :try_start_3d
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_c9

    .line 12
    :try_start_41
    invoke-static {v6}, Lcom/google/android/play/core/internal/zzi;->zza(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v7
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_45} :catch_a3

    if-eqz v7, :cond_83

    :try_start_47
    array-length v8, v7

    if-eqz v8, :cond_83

    .line 13
    aget-object v8, v7, v4

    array-length v8, v8

    if-nez v8, :cond_50

    goto :goto_83

    .line 14
    :cond_50
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5c

    const-string p1, "No certificates found for app."

    .line 15
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 16
    :cond_5c
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_60
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_37

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    array-length v9, v7

    const/4 v10, 0x0

    :goto_6e
    if-ge v10, v9, :cond_7d

    .line 17
    aget-object v11, v7, v10

    .line 18
    aget-object v11, v11, v4

    invoke-virtual {v11, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_60

    add-int/lit8 v10, v10, 0x1

    goto :goto_6e

    :cond_7d
    const-string p1, "There\'s an app certificate that doesn\'t sign the split."

    .line 19
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    .line 20
    :cond_83
    :goto_83
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c3

    :catch_a3
    move-exception p1

    .line 21
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c3
    const-string p1, "Split verification failure."

    .line 22
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_c8} :catch_c9

    return v4

    :catch_c9
    move-exception p1

    const-string v0, "Split verification error."

    .line 23
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4

    :cond_d0
    const/4 p1, 0x1

    return p1

    :cond_d2
    :goto_d2
    const-string p1, "No app certificates found."

    .line 24
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method
