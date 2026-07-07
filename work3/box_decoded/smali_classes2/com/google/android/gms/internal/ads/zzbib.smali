.class public final Lcom/google/android/gms/internal/ads/zzbib;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private zzevl:Lcom/google/android/gms/internal/ads/zzbim;

.field private zzevm:Lcom/google/android/gms/internal/ads/zzbgl;

.field private zzfms:Lcom/google/android/gms/internal/ads/zzdrv;

.field private zzfmt:Lcom/google/android/gms/internal/ads/zzbiy;

.field private zzfmu:Lcom/google/android/gms/internal/ads/zzdoj;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbib;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzbim;)Lcom/google/android/gms/internal/ads/zzbib;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbim;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzevl:Lcom/google/android/gms/internal/ads/zzbim;

    return-object p0
.end method

.method public final zzahg()Lcom/google/android/gms/internal/ads/zzbgm;
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzevm:Lcom/google/android/gms/internal/ads/zzbgl;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbgl;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzevl:Lcom/google/android/gms/internal/ads/zzbim;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbim;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfms:Lcom/google/android/gms/internal/ads/zzdrv;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdrv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdrv;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfms:Lcom/google/android/gms/internal/ads/zzdrv;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfmt:Lcom/google/android/gms/internal/ads/zzbiy;

    if-nez v0, :cond_1

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbiy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbiy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfmt:Lcom/google/android/gms/internal/ads/zzbiy;

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfmu:Lcom/google/android/gms/internal/ads/zzdoj;

    if-nez v0, :cond_2

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdoj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfmu:Lcom/google/android/gms/internal/ads/zzdoj;

    .line 15
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzevm:Lcom/google/android/gms/internal/ads/zzbgl;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzevl:Lcom/google/android/gms/internal/ads/zzbim;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfms:Lcom/google/android/gms/internal/ads/zzdrv;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfmt:Lcom/google/android/gms/internal/ads/zzbiy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzfmu:Lcom/google/android/gms/internal/ads/zzdoj;

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzbhg;-><init>(Lcom/google/android/gms/internal/ads/zzbgl;Lcom/google/android/gms/internal/ads/zzbim;Lcom/google/android/gms/internal/ads/zzdrv;Lcom/google/android/gms/internal/ads/zzbiy;Lcom/google/android/gms/internal/ads/zzdoj;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbgl;)Lcom/google/android/gms/internal/ads/zzbib;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbgl;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbib;->zzevm:Lcom/google/android/gms/internal/ads/zzbgl;

    return-object p0
.end method
