.class final Lcom/google/android/gms/internal/ads/zzemk;
.super Lcom/google/android/gms/internal/ads/zzeiu;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# static fields
.field static final zziqt:[I


# instance fields
.field private final zziqu:I

.field private final zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

.field private final zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

.field private final zziqx:I

.field private final zziqy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    .line 142
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemk;->zziqt:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeiu;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzemj;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemk;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)V

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 5

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x80

    if-ge v0, v1, :cond_2

    .line 14
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzemk;->zzb(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p0

    return-object p0

    .line 15
    :cond_2
    instance-of v2, p0, Lcom/google/android/gms/internal/ads/zzemk;

    if-eqz v2, :cond_4

    .line 16
    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/internal/ads/zzemk;

    .line 17
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v1, :cond_3

    .line 18
    iget-object p0, v2, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzemk;->zzb(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p0

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/zzemk;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzemk;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)V

    return-object p1

    .line 20
    :cond_3
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result v1

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result v3

    if-le v1, v3, :cond_4

    .line 22
    new-instance p0, Lcom/google/android/gms/internal/ads/zzemk;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzemk;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)V

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/zzemk;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzemk;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)V

    return-object p1

    .line 24
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfu()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzemk;->zzhq(I)I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemk;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemk;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)V

    return-object v0

    .line 27
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzemm;-><init>(Lcom/google/android/gms/internal/ads/zzemj;)V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzemm;->zza(Lcom/google/android/gms/internal/ads/zzemm;Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzemk;)Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    return-object p0
.end method

.method private static zzb(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 4

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v0

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v1

    add-int v2, v0, v1

    .line 30
    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/zzeiu;->zza([BIII)V

    .line 32
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzeiu;->zza([BIII)V

    .line 33
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzu([B)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzemk;)Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    return-object p0
.end method

.method static zzhq(I)I
    .locals 2

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemk;->zziqt:[I

    array-length v1, v0

    if-lt p0, v1, :cond_0

    const p0, 0x7fffffff

    return p0

    .line 36
    :cond_0
    aget p0, v0, p0

    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 12

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzeiu;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 87
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzeiu;

    .line 88
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 90
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    if-nez v1, :cond_3

    return v0

    .line 92
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfw()I

    move-result v1

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfw()I

    move-result v3

    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    if-eq v1, v3, :cond_4

    return v2

    .line 98
    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeml;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzemj;)V

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzejf;

    .line 101
    new-instance v5, Lcom/google/android/gms/internal/ads/zzeml;

    invoke-direct {v5, p1, v3}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzemj;)V

    .line 102
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejf;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 104
    :goto_0
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v8

    sub-int/2addr v8, v3

    .line 105
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v9

    sub-int/2addr v9, v6

    .line 106
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v10

    if-nez v3, :cond_5

    .line 108
    invoke-virtual {v4, p1, v6, v10}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Lcom/google/android/gms/internal/ads/zzeiu;II)Z

    move-result v11

    goto :goto_1

    .line 109
    :cond_5
    invoke-virtual {p1, v4, v3, v10}, Lcom/google/android/gms/internal/ads/zzejf;->zza(Lcom/google/android/gms/internal/ads/zzeiu;II)Z

    move-result v11

    :goto_1
    if-nez v11, :cond_6

    return v2

    :cond_6
    add-int/2addr v7, v10

    .line 113
    iget v11, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    if-lt v7, v11, :cond_8

    if-ne v7, v11, :cond_7

    return v0

    .line 116
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_8
    if-ne v10, v8, :cond_9

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzejf;

    move-object v4, v3

    const/4 v3, 0x0

    goto :goto_2

    :cond_9
    add-int/2addr v3, v10

    :goto_2
    if-ne v10, v9, :cond_a

    .line 123
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzejf;

    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    add-int/2addr v6, v10

    goto :goto_0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->zzbfp()Lcom/google/android/gms/internal/ads/zzejd;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    return v0
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeiu;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzeiv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zza(Lcom/google/android/gms/internal/ads/zzeiv;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zza(Lcom/google/android/gms/internal/ads/zzeiv;)V

    return-void
.end method

.method public final zzaa(II)Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 3

    .line 46
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzemk;->zzi(III)I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    sget-object p1, Lcom/google/android/gms/internal/ads/zzeiu;->zziiy:Lcom/google/android/gms/internal/ads/zzeiu;

    return-object p1

    .line 49
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    if-ne v0, v1, :cond_1

    return-object p0

    .line 51
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    if-gt p2, v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzaa(II)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p1

    return-object p1

    :cond_2
    if-lt p1, v0, :cond_3

    .line 54
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzaa(II)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p1

    return-object p1

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    .line 56
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzaa(II)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    sub-int/2addr p2, v2

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzeiu;->zzaa(II)Lcom/google/android/gms/internal/ads/zzeiu;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzemk;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzeiu;)V

    return-object v0
.end method

.method protected final zzb([BIII)V
    .locals 2

    add-int v0, p2, p4

    .line 60
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    if-gt v0, v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeiu;->zzb([BIII)V

    return-void

    :cond_0
    if-lt p2, v1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzeiu;->zzb([BIII)V

    return-void

    :cond_1
    sub-int/2addr v1, p2

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzb([BIII)V

    .line 66
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    const/4 v0, 0x0

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    invoke-virtual {p2, p1, v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzeiu;->zzb([BIII)V

    return-void
.end method

.method public final zzbfp()Lcom/google/android/gms/internal/ads/zzejd;
    .locals 1

    .line 43
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzemj;-><init>(Lcom/google/android/gms/internal/ads/zzemk;)V

    return-object v0
.end method

.method public final zzbfr()Z
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzg(III)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeiu;->size()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzg(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public final zzbfs()Lcom/google/android/gms/internal/ads/zzejj;
    .locals 4

    .line 134
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzemo;-><init>(Lcom/google/android/gms/internal/ads/zzemk;)V

    .line 136
    new-instance v1, Lcom/google/android/gms/internal/ads/zzejk;

    const/16 v2, 0x1000

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzejk;-><init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/zzeji;)V

    return-object v1
.end method

.method protected final zzbfu()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqy:I

    return v0
.end method

.method protected final zzbfv()Z
    .locals 2

    .line 45
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqy:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzemk;->zzhq(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzfy(I)B
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqu:I

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzemk;->zzab(II)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzfz(I)B

    move-result p1

    return p1
.end method

.method final zzfz(I)B
    .locals 2

    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzfz(I)B

    move-result p1

    return p1

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzfz(I)B

    move-result p1

    return p1
.end method

.method protected final zzg(III)I
    .locals 2

    add-int v0, p2, p3

    .line 76
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    if-gt v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzg(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzg(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 81
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzg(III)I

    move-result p1

    .line 82
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzg(III)I

    move-result p1

    return p1
.end method

.method protected final zzh(III)I
    .locals 2

    add-int v0, p2, p3

    .line 127
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqx:I

    if-gt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzh(III)I

    move-result p1

    return p1

    :cond_0
    if-lt p2, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    sub-int/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzh(III)I

    move-result p1

    return p1

    :cond_1
    sub-int/2addr v1, p2

    .line 132
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqv:Lcom/google/android/gms/internal/ads/zzeiu;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzeiu;->zzh(III)I

    move-result p1

    .line 133
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemk;->zziqw:Lcom/google/android/gms/internal/ads/zzeiu;

    const/4 v0, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzeiu;->zzh(III)I

    move-result p1

    return p1
.end method
