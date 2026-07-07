.class public final Lcom/google/android/gms/internal/ads/zzdvx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final limit:I

.field private final zzhtf:Lcom/google/android/gms/internal/ads/zzdvd;

.field private final zzhtg:Z

.field private final zzhth:Lcom/google/android/gms/internal/ads/zzdwa;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdwa;)V
    .locals 3

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdvh;->zzhsy:Lcom/google/android/gms/internal/ads/zzdvh;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 3
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdvx;-><init>(Lcom/google/android/gms/internal/ads/zzdwa;ZLcom/google/android/gms/internal/ads/zzdvd;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzdwa;ZLcom/google/android/gms/internal/ads/zzdvd;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzhth:Lcom/google/android/gms/internal/ads/zzdwa;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzhtg:Z

    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzhtf:Lcom/google/android/gms/internal/ads/zzdvd;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdvx;->limit:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzdvx;)Lcom/google/android/gms/internal/ads/zzdvd;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzhtf:Lcom/google/android/gms/internal/ads/zzdvd;

    return-object p0
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzdvd;)Lcom/google/android/gms/internal/ads/zzdvx;
    .locals 2

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdvv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvx;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdvw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdvw;-><init>(Lcom/google/android/gms/internal/ads/zzdvd;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdvx;-><init>(Lcom/google/android/gms/internal/ads/zzdwa;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdvx;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzdvx;->limit:I

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdvx;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdvx;->zzb(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method private final zzb(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdvx;->zzhth:Lcom/google/android/gms/internal/ads/zzdwa;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdwa;->zza(Lcom/google/android/gms/internal/ads/zzdvx;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdvv;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdvy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdvy;-><init>(Lcom/google/android/gms/internal/ads/zzdvx;Ljava/lang/CharSequence;)V

    return-object v0
.end method
