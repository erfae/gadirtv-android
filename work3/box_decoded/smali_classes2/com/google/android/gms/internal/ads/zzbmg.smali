.class final Lcom/google/android/gms/internal/ads/zzbmg;
.super Lcom/google/android/gms/internal/ads/zzbme;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final context:Landroid/content/Context;

.field private final view:Landroid/view/View;

.field private final zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzfqx:Ljava/util/concurrent/Executor;

.field private final zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

.field private final zzftc:Lcom/google/android/gms/internal/ads/zzbnz;

.field private final zzftd:Lcom/google/android/gms/internal/ads/zzccl;

.field private final zzfte:Lcom/google/android/gms/internal/ads/zzbyc;

.field private final zzftf:Lcom/google/android/gms/internal/ads/zzeoz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeoz<",
            "Lcom/google/android/gms/internal/ads/zzcxi;",
            ">;"
        }
    .end annotation
.end field

.field private zzftg:Lcom/google/android/gms/internal/ads/zzvn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbob;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdmx;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbnz;Lcom/google/android/gms/internal/ads/zzccl;Lcom/google/android/gms/internal/ads/zzbyc;Lcom/google/android/gms/internal/ads/zzeoz;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbob;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/ads/zzdmx;",
            "Landroid/view/View;",
            "Lcom/google/android/gms/internal/ads/zzbdv;",
            "Lcom/google/android/gms/internal/ads/zzbnz;",
            "Lcom/google/android/gms/internal/ads/zzccl;",
            "Lcom/google/android/gms/internal/ads/zzbyc;",
            "Lcom/google/android/gms/internal/ads/zzeoz<",
            "Lcom/google/android/gms/internal/ads/zzcxi;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbme;-><init>(Lcom/google/android/gms/internal/ads/zzbob;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmg;->context:Landroid/content/Context;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmg;->view:Landroid/view/View;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

    .line 6
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftc:Lcom/google/android/gms/internal/ads/zzbnz;

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftd:Lcom/google/android/gms/internal/ads/zzccl;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfte:Lcom/google/android/gms/internal/ads/zzbyc;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftf:Lcom/google/android/gms/internal/ads/zzeoz;

    .line 10
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfqx:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzys;
    .locals 1

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftc:Lcom/google/android/gms/internal/ads/zzbnz;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbnz;->getVideoController()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdnr; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zza(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzvn;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    if-eqz v0, :cond_0

    .line 14
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbfn;->zzb(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzbfn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdv;->zza(Lcom/google/android/gms/internal/ads/zzbfn;)V

    .line 15
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvn;->heightPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 16
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzvn;->widthPixels:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftg:Lcom/google/android/gms/internal/ads/zzvn;

    :cond_0
    return-void
.end method

.method public final zzaiy()Lcom/google/android/gms/internal/ads/zzdmx;
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftg:Lcom/google/android/gms/internal/ads/zzvn;

    if-eqz v0, :cond_0

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdns;->zzg(Lcom/google/android/gms/internal/ads/zzvn;)Lcom/google/android/gms/internal/ads/zzdmx;

    move-result-object v0

    return-object v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhhk:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, "FirstParty"

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdmx;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmg;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbmg;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdmx;-><init>(IIZ)V

    return-object v0

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhgw:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdns;->zza(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzdmx;)Lcom/google/android/gms/internal/ads/zzdmx;

    move-result-object v0

    return-object v0
.end method

.method public final zzaiz()Landroid/view/View;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzajh()Lcom/google/android/gms/internal/ads/zzdmx;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

    return-object v0
.end method

.method public final zzaji()I
    .locals 2

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcye:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 35
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzeri:Lcom/google/android/gms/internal/ads/zzdmu;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmu;->zzhho:Z

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcyf:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 38
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfpr:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnj;->zzhik:Lcom/google/android/gms/internal/ads/zzdnh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnh;->zzerj:Lcom/google/android/gms/internal/ads/zzdmz;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmz;->zzhhx:I

    return v0
.end method

.method public final zzajj()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfqx:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbmf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzbmf;-><init>(Lcom/google/android/gms/internal/ads/zzbmg;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzbme;->zzajj()V

    return-void
.end method

.method final synthetic zzajk()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftd:Lcom/google/android/gms/internal/ads/zzccl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccl;->zzanu()Lcom/google/android/gms/internal/ads/zzafx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftd:Lcom/google/android/gms/internal/ads/zzccl;

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccl;->zzanu()Lcom/google/android/gms/internal/ads/zzafx;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzftf:Lcom/google/android/gms/internal/ads/zzeoz;

    .line 51
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeoz;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzxg;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbmg;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzafx;->zza(Lcom/google/android/gms/internal/ads/zzxg;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException when notifyAdLoad is called"

    .line 54
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzke()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmg;->zzfte:Lcom/google/android/gms/internal/ads/zzbyc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyc;->zzalx()V

    return-void
.end method
