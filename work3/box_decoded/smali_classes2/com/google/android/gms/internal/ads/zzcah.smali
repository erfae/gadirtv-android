.class public final Lcom/google/android/gms/internal/ads/zzcah;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/zzbtj;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

.field private final zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

.field private zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private final zzgac:Lcom/google/android/gms/internal/ads/zzue$zza$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzdmu;Lcom/google/android/gms/internal/ads/zzazh;Lcom/google/android/gms/internal/ads/zzue$zza$zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcah;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzgac:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 13

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzgac:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzue$zza$zza;->zzbyh:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzgac:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzue$zza$zza;->zzbyd:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzgac:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzue$zza$zza;->zzbyk:Lcom/google/android/gms/internal/ads/zzue$zza$zza;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzdvl:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzard;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcah;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzard;->zzm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazh;->zzegl:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzbpd:Lcom/google/android/gms/internal/ads/zzazh;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzazh;->zzegm:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhi:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcul:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhi:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getMediaType()Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    if-ne v0, v1, :cond_1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzare;->zzdpu:Lcom/google/android/gms/internal/ads/zzare;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzarg;->zzdpy:Lcom/google/android/gms/internal/ads/zzarg;

    move-object v11, v0

    move-object v10, v1

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhj:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarg;->zzdqa:Lcom/google/android/gms/internal/ads/zzarg;

    goto :goto_0

    .line 20
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarg;->zzdpx:Lcom/google/android/gms/internal/ads/zzarg;

    .line 21
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzare;->zzdps:Lcom/google/android/gms/internal/ads/zzare;

    move-object v10, v0

    move-object v11, v1

    .line 23
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzard;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzche:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "javascript"

    .line 25
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzard;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarg;Lcom/google/android/gms/internal/ads/zzare;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    goto :goto_2

    .line 28
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzard;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 30
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzard;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 31
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzard;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbdv;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzard;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzlf()Lcom/google/android/gms/internal/ads/zzard;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzard;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcuo:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 0

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final zzux()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzfue:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcah;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
