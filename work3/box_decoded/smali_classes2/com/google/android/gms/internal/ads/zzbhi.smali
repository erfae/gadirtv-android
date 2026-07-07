.class final Lcom/google/android/gms/internal/ads/zzbhi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcaw;


# instance fields
.field private zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

.field private zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

.field private zzexr:Lcom/google/android/gms/internal/ads/zzcap;

.field private zzexs:Lcom/google/android/gms/internal/ads/zzblz;

.field private zzext:Lcom/google/android/gms/internal/ads/zzdnj;

.field private zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

.field private zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

.field private final synthetic zzexw:Lcom/google/android/gms/internal/ads/zzbhg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzbhj;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbhi;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdjv;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdkt;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzdnj;)Lcom/google/android/gms/internal/ads/zzbrd;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzblz;)Lcom/google/android/gms/internal/ads/zzcaw;
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzblz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexs:Lcom/google/android/gms/internal/ads/zzblz;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzcaw;
    .locals 0

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrg;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzcaw;
    .locals 0

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    return-object p0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzcap;)Lcom/google/android/gms/internal/ads/zzcaw;
    .locals 0

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzepl;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcap;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexr:Lcom/google/android/gms/internal/ads/zzcap;

    return-object p0
.end method

.method public final zzafo()Lcom/google/android/gms/internal/ads/zzcat;
    .locals 18

    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbwp;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    const-class v2, Lcom/google/android/gms/internal/ads/zzbrg;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexr:Lcom/google/android/gms/internal/ads/zzcap;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcap;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexs:Lcom/google/android/gms/internal/ads/zzblz;

    const-class v2, Lcom/google/android/gms/internal/ads/zzblz;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbhl;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexw:Lcom/google/android/gms/internal/ads/zzbhg;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexs:Lcom/google/android/gms/internal/ads/zzblz;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexr:Lcom/google/android/gms/internal/ads/zzcap;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzbpf;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzbpf;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzdol;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzdol;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbqq;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzbqq;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzcld;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzcld;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexp:Lcom/google/android/gms/internal/ads/zzbwp;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexq:Lcom/google/android/gms/internal/ads/zzbrg;

    new-instance v13, Lcom/google/android/gms/internal/ads/zzdot;

    invoke-direct {v13}, Lcom/google/android/gms/internal/ads/zzdot;-><init>()V

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzext:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexu:Lcom/google/android/gms/internal/ads/zzdkt;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzbhi;->zzexv:Lcom/google/android/gms/internal/ads/zzdjv;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/google/android/gms/internal/ads/zzbhl;-><init>(Lcom/google/android/gms/internal/ads/zzbhg;Lcom/google/android/gms/internal/ads/zzblz;Lcom/google/android/gms/internal/ads/zzcap;Lcom/google/android/gms/internal/ads/zzbpf;Lcom/google/android/gms/internal/ads/zzdol;Lcom/google/android/gms/internal/ads/zzbqq;Lcom/google/android/gms/internal/ads/zzcld;Lcom/google/android/gms/internal/ads/zzbwp;Lcom/google/android/gms/internal/ads/zzbrg;Lcom/google/android/gms/internal/ads/zzdot;Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdkt;Lcom/google/android/gms/internal/ads/zzdjv;Lcom/google/android/gms/internal/ads/zzbhj;)V

    return-object v1
.end method

.method public final synthetic zzafp()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbhi;->zzafo()Lcom/google/android/gms/internal/ads/zzcat;

    move-result-object v0

    return-object v0
.end method
