.class final Lcom/google/android/gms/internal/ads/zzbij;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzchi;


# instance fields
.field private zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

.field private zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

.field private zzext:Lcom/google/android/gms/internal/ads/zzdnj;

.field private zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

.field private zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

.field private final synthetic zzexw:Lcom/google/android/gms/internal/ads/zzbhg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbij;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdjv;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkt;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnj;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    return-object p0
.end method

.method public final synthetic zzafp()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbij;->zzaho()Lcom/google/android/gms/internal/ads/zzchf;

    move-result-object v0

    return-object v0
.end method

.method public final zzaho()Lcom/google/android/gms/internal/ads/zzchf;
    .locals 15

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbwp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbrg;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbii;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzbpf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzbpf;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdol;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzdol;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbqq;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcld;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcld;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdot;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdot;-><init>()V

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

    iget-object v13, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

    const/4 v14, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzbii;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbpf;Lcom/google/android/gms/internal/ads/zzdol;Lcom/google/android/gms/internal/ads/zzbqq;Lcom/google/android/gms/internal/ads/zzcld;Lcom/google/android/gms/internal/ads/zzbwp;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzdot;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdkt;Lcom/google/android/gms/internal/ads/zzdjv;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzchi;
    .locals 0

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    return-object p0
.end method

.method public final synthetic zzf(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzchi;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbij;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    return-object p0
.end method
