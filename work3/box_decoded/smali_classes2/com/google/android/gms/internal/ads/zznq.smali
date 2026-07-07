.class public final Lcom/google/android/gms/internal/ads/zznq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field public static final zzbgs:Lcom/google/android/gms/internal/ads/zznq;


# instance fields
.field public final length:I

.field private zzaht:I

.field private final zzbgt:[Lcom/google/android/gms/internal/ads/zznr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zznq;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zznr;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zznq;-><init>([Lcom/google/android/gms/internal/ads/zznr;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zznq;->zzbgs:Lcom/google/android/gms/internal/ads/zznq;

    return-void
.end method

.method public varargs constructor <init>([Lcom/google/android/gms/internal/ads/zznr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznq;->zzbgt:[Lcom/google/android/gms/internal/ads/zznr;

    .line 3
    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zznq;->length:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zznq;

    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/zznq;->length:I

    iget v3, p1, Lcom/google/android/gms/internal/ads/zznq;->length:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zznq;->zzbgt:[Lcom/google/android/gms/internal/ads/zznr;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zznq;->zzbgt:[Lcom/google/android/gms/internal/ads/zznr;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznq;->zzaht:I

    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznq;->zzbgt:[Lcom/google/android/gms/internal/ads/zznr;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zznq;->zzaht:I

    .line 13
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zznq;->zzaht:I

    return v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zznr;)I
    .locals 2

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/zznq;->length:I

    if-ge v0, v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznq;->zzbgt:[Lcom/google/android/gms/internal/ads/zznr;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final zzbb(I)Lcom/google/android/gms/internal/ads/zznr;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznq;->zzbgt:[Lcom/google/android/gms/internal/ads/zznr;

    aget-object p1, v0, p1

    return-object p1
.end method
