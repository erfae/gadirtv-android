.class public final Lcom/google/android/gms/internal/ads/zzze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzacp:Lcom/google/android/gms/internal/ads/zzvl;

.field private zzbnz:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

.field private zzbpa:Z

.field private zzbul:Lcom/google/android/gms/internal/ads/zzxg;

.field private zzbum:Ljava/lang/String;

.field private final zzbuo:Lcom/google/android/gms/internal/ads/zzanj;

.field private zzcgp:Lcom/google/android/gms/internal/ads/zzva;

.field private zzcgw:Lcom/google/android/gms/ads/AdListener;

.field private zzcgx:Lcom/google/android/gms/ads/reward/AdMetadataListener;

.field private zzcjx:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

.field private zzcka:Lcom/google/android/gms/ads/OnPaidEventListener;

.field private zzcki:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

.field private zzckj:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->zzcho:Lcom/google/android/gms/internal/ads/zzvl;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/ads/zzvl;->zzcho:Lcom/google/android/gms/internal/ads/zzvl;

    .line 7
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzze;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/ads/doubleclick/PublisherInterstitialAd;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance p3, Lcom/google/android/gms/internal/ads/zzanj;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzanj;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbuo:Lcom/google/android/gms/internal/ads/zzanj;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->context:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzacp:Lcom/google/android/gms/internal/ads/zzvl;

    return-void
.end method

.method private final zzcn(Ljava/lang/String;)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "The ad unit ID must be set on InterstitialAd before "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is called."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgw:Lcom/google/android/gms/ads/AdListener;

    return-object v0
.end method

.method public final getAdMetadata()Landroid/os/Bundle;
    .locals 2

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxg;->getAdMetadata()Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 95
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getAdUnitId()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbum:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppEventListener()Lcom/google/android/gms/ads/doubleclick/AppEventListener;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbnz:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    return-object v0
.end method

.method public final getMediationAdapterClassName()Ljava/lang/String;
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxg;->zzkg()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 132
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getOnCustomRenderedAdLoadedListener()Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcjx:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-object v0
.end method

.method public final getResponseInfo()Lcom/google/android/gms/ads/ResponseInfo;
    .locals 3

    const/4 v0, 0x0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v1, :cond_0

    .line 136
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxg;->zzkh()Lcom/google/android/gms/internal/ads/zzyn;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 139
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/ads/ResponseInfo;->zza(Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/ads/ResponseInfo;

    move-result-object v0

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 3

    const/4 v0, 0x0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-nez v1, :cond_0

    return v0

    .line 20
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxg;->isReady()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 22
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final isLoading()Z
    .locals 3

    const/4 v0, 0x0

    .line 24
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-nez v1, :cond_0

    return v0

    .line 26
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzxg;->isLoading()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "#007 Could not call remote method."

    .line 28
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final setAdListener(Lcom/google/android/gms/ads/AdListener;)V
    .locals 2

    .line 62
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgw:Lcom/google/android/gms/ads/AdListener;

    .line 63
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 64
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvg;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzwt;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 67
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAdMetadataListener(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V
    .locals 2

    .line 82
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgx:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 85
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 86
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzxj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 89
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setAdUnitId(Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbum:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 80
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbum:Ljava/lang/String;

    return-void

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on InterstitialAd."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setAppEventListener(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V
    .locals 2

    .line 97
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbnz:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    .line 98
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 100
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvt;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 101
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzxo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 104
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 1

    .line 147
    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbpa:Z

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzxg;->setImmersiveMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 152
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnCustomRenderedAdLoadedListener(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 2

    .line 106
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcjx:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 110
    new-instance v1, Lcom/google/android/gms/internal/ads/zzacc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 112
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzacb;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 115
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setOnPaidEventListener(Lcom/google/android/gms/ads/OnPaidEventListener;)V
    .locals 2

    .line 154
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcka:Lcom/google/android/gms/ads/OnPaidEventListener;

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_0

    .line 156
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaf;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaaf;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzym;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 159
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 2

    .line 117
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcki:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    .line 118
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 120
    new-instance v1, Lcom/google/android/gms/internal/ads/zzaus;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzaup;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 124
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final show()V
    .locals 2

    :try_start_0
    const-string v0, "show"

    .line 141
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzze;->zzcn(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzxg;->showInterstitial()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 145
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzva;)V
    .locals 2

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgp:Lcom/google/android/gms/internal/ads/zzva;

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 72
    new-instance v1, Lcom/google/android/gms/internal/ads/zzuz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzuz;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzws;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 76
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzza;)V
    .locals 8

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    if-nez v0, :cond_8

    const-string v0, "loadAd"

    .line 32
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbum:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 33
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzze;->zzcn(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzckj:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzvn;->zzpp()Lcom/google/android/gms/internal/ads/zzvn;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzvn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzvn;-><init>()V

    :goto_0
    move-object v4, v0

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqb()Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbum:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbuo:Lcom/google/android/gms/internal/ads/zzanj;

    .line 38
    new-instance v7, Lcom/google/android/gms/internal/ads/zzwh;

    move-object v1, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzwh;-><init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)V

    const/4 v1, 0x0

    .line 39
    invoke-virtual {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzwn;->zzd(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/zzxg;

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    .line 42
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgw:Lcom/google/android/gms/ads/AdListener;

    if-eqz v1, :cond_2

    .line 43
    new-instance v1, Lcom/google/android/gms/internal/ads/zzvg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgw:Lcom/google/android/gms/ads/AdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(Lcom/google/android/gms/ads/AdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzwt;)V

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgp:Lcom/google/android/gms/internal/ads/zzva;

    if-eqz v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzuz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgp:Lcom/google/android/gms/internal/ads/zzva;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzuz;-><init>(Lcom/google/android/gms/internal/ads/zzva;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzws;)V

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgx:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcgx:Lcom/google/android/gms/ads/reward/AdMetadataListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzvh;-><init>(Lcom/google/android/gms/ads/reward/AdMetadataListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzxj;)V

    .line 48
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbnz:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzvt;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbnz:Lcom/google/android/gms/ads/doubleclick/AppEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzvt;-><init>(Lcom/google/android/gms/ads/doubleclick/AppEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzxo;)V

    .line 50
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcjx:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    if-eqz v0, :cond_6

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzacc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcjx:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzacc;-><init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzacb;)V

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcki:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_7

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaus;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcki:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzaup;)V

    .line 54
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaaf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzze;->zzcka:Lcom/google/android/gms/ads/OnPaidEventListener;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzaaf;-><init>(Lcom/google/android/gms/ads/OnPaidEventListener;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzym;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbpa:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->setImmersiveMode(Z)V

    .line 56
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbul:Lcom/google/android/gms/internal/ads/zzxg;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzze;->context:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzvl;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzza;)Lcom/google/android/gms/internal/ads/zzvk;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzxg;->zza(Lcom/google/android/gms/internal/ads/zzvk;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbuo:Lcom/google/android/gms/internal/ads/zzanj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzza;->zzqu()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzanj;->zzf(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 60
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zze(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzckj:Z

    return-void
.end method
