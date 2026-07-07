.class public final Lcom/google/android/gms/internal/ads/zzcsf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrh<",
        "Lcom/google/android/gms/internal/ads/zzbme;",
        "Lcom/google/android/gms/internal/ads/zzapo;",
        "Lcom/google/android/gms/internal/ads/zzcst;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private view:Landroid/view/View;

.field private final zzgrj:Lcom/google/android/gms/internal/ads/zzbna;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbna;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsf;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsf;->zzgrj:Lcom/google/android/gms/internal/ads/zzbna;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcsf;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsf;->view:Landroid/view/View;

    return-object p1
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/ads/zzcrb;)Lcom/google/android/gms/internal/ads/zzys;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;
        }
    .end annotation

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzapo;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzapo;->getVideoController()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnr;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnj;",
            "Lcom/google/android/gms/internal/ads/zzdmu;",
            "Lcom/google/android/gms/internal/ads/zzcrb<",
            "Lcom/google/android/gms/internal/ads/zzapo;",
            "Lcom/google/android/gms/internal/ads/zzcst;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapo;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzdnt:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapo;->zzdn(Ljava/lang/String;)V

    .line 6
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzdmo:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapo;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzetp:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhha:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsf;->context:Landroid/content/Context;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcsk;

    const/4 p2, 0x0

    invoke-direct {v6, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzcsk;-><init>(Lcom/google/android/gms/internal/ads/zzcsf;Lcom/google/android/gms/internal/ads/zzcrb;Lcom/google/android/gms/internal/ads/zzcsh;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/internal/ads/zzano;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnj;->zzhij:Lcom/google/android/gms/internal/ads/zzdne;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdne;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzdnn;->zzbpe:Lcom/google/android/gms/internal/ads/zzvn;

    .line 9
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzapo;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvk;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapc;Lcom/google/android/gms/internal/ads/zzano;Lcom/google/android/gms/internal/ads/zzvn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdnr;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdnr;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzcrb;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;,
            Lcom/google/android/gms/internal/ads/zzcuq;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsf;->zzgrj:Lcom/google/android/gms/internal/ads/zzbna;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbos;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzchy:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzbos;-><init>(Lcom/google/android/gms/internal/ads/zzdnj;Lcom/google/android/gms/internal/ads/zzdmu;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbmh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsf;->view:Landroid/view/View;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcsi;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/zzcsi;-><init>(Lcom/google/android/gms/internal/ads/zzcrb;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgz:Ljava/util/List;

    const/4 v4, 0x0

    .line 15
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdmx;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzbmh;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbnz;Lcom/google/android/gms/internal/ads/zzdmx;)V

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbna;->zza(Lcom/google/android/gms/internal/ads/zzbos;Lcom/google/android/gms/internal/ads/zzbmh;)Lcom/google/android/gms/internal/ads/zzbmd;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmd;->zzahd()Lcom/google/android/gms/internal/ads/zzbxx;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsf;->view:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbxx;->zzv(Landroid/view/View;)V

    .line 18
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrb;->zzgqp:Lcom/google/android/gms/internal/ads/zzbtc;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzboe;->zzafw()Lcom/google/android/gms/internal/ads/zzcvv;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzcst;->zzb(Lcom/google/android/gms/internal/ads/zzano;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbmd;->zzahc()Lcom/google/android/gms/internal/ads/zzbme;

    move-result-object p1

    return-object p1
.end method
