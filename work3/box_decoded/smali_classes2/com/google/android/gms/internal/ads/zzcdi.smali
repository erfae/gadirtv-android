.class public final Lcom/google/android/gms/internal/ads/zzcdi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzgbt:Lcom/google/android/gms/internal/ads/zzccm;

.field private final zzgep:Lcom/google/android/gms/internal/ads/zzcgh;

.field private final zzgey:Lcom/google/android/gms/internal/ads/zzchp;

.field private final zzgez:Lcom/google/android/gms/internal/ads/zzbkr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchp;Lcom/google/android/gms/internal/ads/zzcgh;Lcom/google/android/gms/internal/ads/zzbkr;Lcom/google/android/gms/internal/ads/zzccm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgey:Lcom/google/android/gms/internal/ads/zzchp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgep:Lcom/google/android/gms/internal/ads/zzcgh;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgez:Lcom/google/android/gms/internal/ads/zzbkr;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgbt:Lcom/google/android/gms/internal/ads/zzccm;

    return-void
.end method


# virtual methods
.method final synthetic zza(Lcom/google/android/gms/internal/ads/zzbdv;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Hiding native ads overlay."

    .line 15
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgez:Lcom/google/android/gms/internal/ads/zzbkr;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbkr;->zzbe(Z)V

    return-void
.end method

.method final synthetic zza(Ljava/util/Map;Z)V
    .locals 2

    .line 23
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "messageType"

    const-string v1, "htmlLoaded"

    .line 24
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "id"

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgep:Lcom/google/android/gms/internal/ads/zzcgh;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcgh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzaon()Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzbeh;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgey:Lcom/google/android/gms/internal/ads/zzchp;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpo()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzchp;->zzd(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbdv;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdh;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;)V

    const-string v2, "/sendMessageToSdk"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcdk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcdk;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;)V

    const-string v2, "/adMuted"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgep:Lcom/google/android/gms/internal/ads/zzcgh;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;)V

    const-string v4, "/loadHtml"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcgh;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgep:Lcom/google/android/gms/internal/ads/zzcgh;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdm;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdm;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;)V

    const-string v4, "/showOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcgh;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgep:Lcom/google/android/gms/internal/ads/zzcgh;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdl;

    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzcdl;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;)V

    const-string v4, "/hideOverlay"

    invoke-virtual {v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzcgh;->zza(Ljava/lang/ref/WeakReference;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Lcom/google/android/gms/internal/ads/zzbdv;Ljava/util/Map;)V
    .locals 0

    const-string p2, "Showing native ads overlay."

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgez:Lcom/google/android/gms/internal/ads/zzbkr;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbkr;->zzbe(Z)V

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbdv;Ljava/util/Map;)V
    .locals 0

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgbt:Lcom/google/android/gms/internal/ads/zzccm;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzccm;->zzams()V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzbdv;Ljava/util/Map;)V
    .locals 1

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zzgep:Lcom/google/android/gms/internal/ads/zzcgh;

    const-string v0, "sendMessageToNativeJs"

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcgh;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
