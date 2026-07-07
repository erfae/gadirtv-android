.class public final Lcom/google/android/gms/internal/ads/zzcou;
.super Lcom/google/android/gms/internal/ads/zzatb;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzgoa:Lcom/google/android/gms/internal/ads/zzaty;

.field private final zzgob:Lcom/google/android/gms/internal/ads/zzatz;

.field private final zzgoc:Lcom/google/android/gms/internal/ads/zzbjl;

.field private final zzgod:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcpf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzaty;Lcom/google/android/gms/internal/ads/zzbjl;Lcom/google/android/gms/internal/ads/zzatz;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzaty;",
            "Lcom/google/android/gms/internal/ads/zzbjl;",
            "Lcom/google/android/gms/internal/ads/zzatz;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzcpf;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzatb;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabf;->initialize(Landroid/content/Context;)V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcou;->context:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzfqx:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgoa:Lcom/google/android/gms/internal/ads/zzaty;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgob:Lcom/google/android/gms/internal/ads/zzatz;

    .line 7
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgoc:Lcom/google/android/gms/internal/ads/zzbjl;

    .line 8
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgod:Ljava/util/HashMap;

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdro;Lcom/google/android/gms/internal/ads/zzdga;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            "Lcom/google/android/gms/internal/ads/zzdro;",
            "Lcom/google/android/gms/internal/ads/zzdga;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcoy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzcoy;-><init>(Lcom/google/android/gms/internal/ads/zzdga;)V

    .line 61
    sget-object p2, Lcom/google/android/gms/internal/ads/zzcox;->zzgmk:Lcom/google/android/gms/internal/ads/zzdqv;

    .line 62
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzhof:Lcom/google/android/gms/internal/ads/zzdrl;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzatl;->zzdvx:Landroid/os/Bundle;

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdrg;->zza(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdrg;->zzb(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p0

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdro;Lcom/google/android/gms/internal/ads/zzaml;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzdro;",
            "Lcom/google/android/gms/internal/ads/zzaml;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Lcom/google/android/gms/internal/ads/zzatr;",
            ">;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/google/android/gms/internal/ads/zzamg;->zzdjy:Lcom/google/android/gms/internal/ads/zzamh;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzcpa;->zzdka:Lcom/google/android/gms/internal/ads/zzamf;

    const-string v2, "AFMA_getAdDictionary"

    .line 69
    invoke-virtual {p2, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object p2

    .line 70
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrl;->zzhoh:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 71
    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    .line 72
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzdrg;->zza(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p0

    return-object p0
.end method

.method private final zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzatf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzatf;",
            ")V"
        }
    .end annotation

    .line 135
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpe;-><init>(Lcom/google/android/gms/internal/ads/zzcou;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzazj;->zzegp:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 136
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzb(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 137
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpg;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzcpg;-><init>(Lcom/google/android/gms/internal/ads/zzcou;Lcom/google/android/gms/internal/ads/zzatf;)V

    .line 138
    sget-object p2, Lcom/google/android/gms/internal/ads/zzazj;->zzegu:Lcom/google/android/gms/internal/ads/zzdzc;

    .line 139
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzdyr;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyo;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzass;)Lcom/google/android/gms/internal/ads/zzasu;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzatr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatr;->zzvy()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/json/JSONObject;

    .line 145
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgod:Ljava/util/HashMap;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcpf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdyz;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzatr;

    invoke-direct {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcpf;-><init>(Lcom/google/android/gms/internal/ads/zzatr;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance p1, Ljava/io/ByteArrayInputStream;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdvk;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzass;Lcom/google/android/gms/internal/ads/zzatd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzatf;)V
    .locals 1

    .line 75
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 76
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcou;->zzb(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzatf;)V

    .line 78
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcoz;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzcoz;-><init>(Lcom/google/android/gms/internal/ads/zzcou;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzfqx:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzdyz;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzatf;)V
    .locals 0

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcou;->zzgj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzatf;)V

    return-void
.end method

.method final synthetic zzarb()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgob:Lcom/google/android/gms/internal/ads/zzatz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzatz;->zzwa()Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    const-string v1, "persistFlags"

    .line 149
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzazm;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzld()Lcom/google/android/gms/internal/ads/zzamc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->context:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazh;->zzzi()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;)Lcom/google/android/gms/internal/ads/zzaml;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgoc:Lcom/google/android/gms/internal/ads/zzbjl;

    .line 13
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object v1

    .line 14
    sget-object v2, Lcom/google/android/gms/internal/ads/zzcpi;->zzgol:Lcom/google/android/gms/internal/ads/zzame;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamg;->zzdjz:Lcom/google/android/gms/internal/ads/zzamf;

    const-string v4, "google.afma.response.normalize"

    .line 15
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object v2

    .line 16
    new-instance v9, Lcom/google/android/gms/internal/ads/zzcpj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcou;->context:Landroid/content/Context;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdsm:Lcom/google/android/gms/internal/ads/zzazh;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgoa:Lcom/google/android/gms/internal/ads/zzaty;

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdtm:Ljava/lang/String;

    move-object v3, v9

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzcpj;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaty;Ljava/lang/String;I)V

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdga;->zzagn()Lcom/google/android/gms/internal/ads/zzdro;

    move-result-object p2

    .line 19
    sget-object v3, Lcom/google/android/gms/internal/ads/zzadf;->zzddc:Lcom/google/android/gms/internal/ads/zzacn;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzacn;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 20
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwb:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Request contained a PoolKey but split request is disabled."

    .line 21
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_0
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwb:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwb:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgod:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcpf;

    if-nez v4, :cond_1

    const-string v3, "Request contained a PoolKey but no matching parameters were found."

    .line 27
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v4, :cond_2

    .line 33
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdro;Lcom/google/android/gms/internal/ads/zzdga;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 35
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdro;Lcom/google/android/gms/internal/ads/zzaml;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 36
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzhoi:Lcom/google/android/gms/internal/ads/zzdrl;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/zzdyz;

    aput-object v0, v4, v5

    aput-object p1, v4, v3

    .line 37
    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcot;

    invoke-direct {v4, p1, v0}, Lcom/google/android/gms/internal/ads/zzcot;-><init>(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 38
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzdrc;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzdrg;->zzb(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object v1

    .line 41
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrl;->zzhoj:Lcom/google/android/gms/internal/ads/zzdrl;

    const/4 v7, 0x3

    new-array v7, v7, [Lcom/google/android/gms/internal/ads/zzdyz;

    aput-object p1, v7, v5

    aput-object v0, v7, v3

    aput-object v1, v7, v6

    .line 42
    invoke-virtual {p2, v4, v7}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object p2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcow;

    invoke-direct {v3, v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcow;-><init>(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 43
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzdrc;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdrg;->zza(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p1

    return-object p1

    .line 48
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcpm;

    iget-object v0, v4, Lcom/google/android/gms/internal/ads/zzcpf;->zzgoi:Lorg/json/JSONObject;

    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzcpf;->zzgoh:Lcom/google/android/gms/internal/ads/zzatr;

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcpm;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatr;)V

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrl;->zzhoi:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 51
    invoke-virtual {p1, v9}, Lcom/google/android/gms/internal/ads/zzdrg;->zzb(Lcom/google/android/gms/internal/ads/zzdqv;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p1

    .line 53
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzhoj:Lcom/google/android/gms/internal/ads/zzdrl;

    new-array v4, v6, [Lcom/google/android/gms/internal/ads/zzdyz;

    aput-object p1, v4, v5

    aput-object v0, v4, v3

    .line 55
    invoke-virtual {p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object p2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcov;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzcov;-><init>(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 56
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzdrc;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 57
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdrg;->zza(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzatf;)V
    .locals 1

    .line 131
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcou;->zzd(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzatf;)V

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadf;->zzddc:Lcom/google/android/gms/internal/ads/zzacn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Split request is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwa:Lcom/google/android/gms/internal/ads/zzdpk;

    if-nez v0, :cond_1

    .line 83
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Pool configuration missing from request."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 84
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwa:Lcom/google/android/gms/internal/ads/zzdpk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdpk;->zzhln:I

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwa:Lcom/google/android/gms/internal/ads/zzdpk;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdpk;->zzhlo:I

    if-nez v0, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzld()Lcom/google/android/gms/internal/ads/zzamc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->context:Landroid/content/Context;

    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazh;->zzzi()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;)Lcom/google/android/gms/internal/ads/zzaml;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgoc:Lcom/google/android/gms/internal/ads/zzbjl;

    .line 89
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdga;->zzagn()Lcom/google/android/gms/internal/ads/zzdro;

    move-result-object v1

    .line 92
    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdro;Lcom/google/android/gms/internal/ads/zzdga;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 94
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdro;Lcom/google/android/gms/internal/ads/zzaml;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p2

    .line 95
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrl;->zzhox:Lcom/google/android/gms/internal/ads/zzdrl;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/zzdyz;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 96
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;[Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrc;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcpc;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzcpc;-><init>(Lcom/google/android/gms/internal/ads/zzcou;Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzdyz;)V

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdrc;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p1

    return-object p1

    .line 85
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Caching is disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzatf;)V
    .locals 1

    .line 107
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzcou;->zzc(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcou;->zza(Lcom/google/android/gms/internal/ads/zzdyz;Lcom/google/android/gms/internal/ads/zzatf;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzatl;",
            "I)",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzld()Lcom/google/android/gms/internal/ads/zzamc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->context:Landroid/content/Context;

    .line 115
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzazh;->zzzi()Lcom/google/android/gms/internal/ads/zzazh;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzamc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazh;)Lcom/google/android/gms/internal/ads/zzaml;

    move-result-object v0

    .line 116
    sget-object v1, Lcom/google/android/gms/internal/ads/zzadl;->zzddt:Lcom/google/android/gms/internal/ads/zzacn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzacn;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    new-instance p1, Ljava/lang/Exception;

    const-string p2, "Signal collection disabled."

    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgoc:Lcom/google/android/gms/internal/ads/zzbjl;

    .line 119
    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbjl;->zza(Lcom/google/android/gms/internal/ads/zzatl;I)Lcom/google/android/gms/internal/ads/zzdga;

    move-result-object p2

    .line 120
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdga;->zzagm()Lcom/google/android/gms/internal/ads/zzdfl;

    move-result-object v1

    .line 121
    sget-object v2, Lcom/google/android/gms/internal/ads/zzamg;->zzdjy:Lcom/google/android/gms/internal/ads/zzamh;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzamg;->zzdjz:Lcom/google/android/gms/internal/ads/zzamf;

    const-string v4, "google.afma.request.getSignals"

    .line 122
    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzame;Lcom/google/android/gms/internal/ads/zzamf;)Lcom/google/android/gms/internal/ads/zzamd;

    move-result-object v0

    .line 123
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdga;->zzagn()Lcom/google/android/gms/internal/ads/zzdro;

    move-result-object p2

    .line 124
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrl;->zzhok:Lcom/google/android/gms/internal/ads/zzdrl;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdvx:Landroid/os/Bundle;

    .line 125
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/google/android/gms/internal/ads/zzdra;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzdyz;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcpb;

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzcpb;-><init>(Lcom/google/android/gms/internal/ads/zzdfl;)V

    .line 126
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdrg;->zza(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdrl;->zzhol:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 127
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzdrg;->zzw(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 128
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzdrg;->zza(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzdrg;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrg;->zzaww()Lcom/google/android/gms/internal/ads/zzdqx;

    move-result-object p1

    return-object p1
.end method

.method public final zzgj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 100
    sget-object v0, Lcom/google/android/gms/internal/ads/zzadf;->zzddc:Lcom/google/android/gms/internal/ads/zzacn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzacn;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Split request is disabled."

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 102
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcpd;-><init>(Lcom/google/android/gms/internal/ads/zzcou;)V

    .line 103
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcou;->zzgod:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcpf;

    if-nez v1, :cond_2

    .line 105
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "URL to be removed not found for cache key: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyr;->immediateFailedFuture(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1

    .line 106
    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object p1

    return-object p1
.end method
