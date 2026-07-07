.class final Lcom/google/android/gms/internal/ads/zzbia;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcaa;


# instance fields
.field private zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

.field private zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

.field private zzext:Lcom/google/android/gms/internal/ads/zzdnj;

.field private zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

.field private zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

.field private final synthetic zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

.field private zzflx:Lcom/google/android/gms/internal/ads/zzcwq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbia;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdjv;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkt;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnj;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    return-object p0
.end method

.method public final synthetic zzafp()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbia;->zzahf()Lcom/google/android/gms/internal/ads/zzbzx;

    move-result-object v0

    return-object v0
.end method

.method public final zzahf()Lcom/google/android/gms/internal/ads/zzbzx;
    .locals 17

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbwp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbrg;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzflx:Lcom/google/android/gms/internal/ads/zzcwq;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcwq;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbid;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzbpf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzbpf;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdol;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzdol;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbqq;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcld;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzcld;-><init>()V

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzdot;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzdot;-><init>()V

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzflx:Lcom/google/android/gms/internal/ads/zzcwq;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbia;->zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

    const/16 v16, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/zzbid;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbpf;Lcom/google/android/gms/internal/ads/zzdol;Lcom/google/android/gms/internal/ads/zzbqq;Lcom/google/android/gms/internal/ads/zzcld;Lcom/google/android/gms/internal/ads/zzbwp;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzdot;Lcom/google/android/gms/internal/ads/zzcwq;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdkt;Lcom/google/android/gms/internal/ads/zzdjv;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzcaa;
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcwq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzflx:Lcom/google/android/gms/internal/ads/zzcwq;

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzcaa;
    .locals 0

    .line 11
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    return-object p0
.end method

.method public final synthetic zze(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzcaa;
    .locals 0

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbia;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    return-object p0
.end method
