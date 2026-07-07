.class public final Lcom/google/android/gms/internal/ads/zzdir;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzp;
.implements Lcom/google/android/gms/internal/ads/zzbrz;
.implements Lcom/google/android/gms/internal/ads/zzbto;
.implements Lcom/google/android/gms/internal/ads/zzdki;


# instance fields
.field private final zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

.field private final zzhdu:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsl;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhdv:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsm;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhdw:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzsq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhdx:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/internal/ads/zzbto;",
            ">;"
        }
    .end annotation
.end field

.field private final zzhdy:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/ads/internal/overlay/zzp;",
            ">;"
        }
    .end annotation
.end field

.field private zzhdz:Lcom/google/android/gms/internal/ads/zzdir;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdpa;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdu:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdv:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdw:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdx:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdy:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzdir;)Lcom/google/android/gms/internal/ads/zzdir;
    .locals 2

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdir;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzdir;-><init>(Lcom/google/android/gms/internal/ads/zzdpa;)V

    .line 11
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzdir;->zzb(Lcom/google/android/gms/internal/ads/zzdki;)V

    return-object v0
.end method


# virtual methods
.method public final onAdClosed()V
    .locals 3

    move-object v0, p0

    .line 32
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdt:Lcom/google/android/gms/internal/ads/zzdpa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdpa;->onAdClosed()V

    .line 35
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdv:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdiv;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdw:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdiu;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

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
    .locals 2

    move-object v0, p0

    .line 51
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdy:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdjb;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzl;)V
    .locals 2

    move-object v0, p0

    .line 47
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdy:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdiy;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdiy;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzl;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzp;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdy:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbto;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdx:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzsq;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdw:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzakz()V
    .locals 2

    move-object v0, p0

    .line 38
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdx:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdix;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdki;)V
    .locals 0

    .line 57
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdir;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsg;)V
    .locals 2

    move-object v0, p0

    .line 23
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdiq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdiq;-><init>(Lcom/google/android/gms/internal/ads/zzsg;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsl;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdu:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzsm;)V
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdv:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 3

    move-object v0, p0

    .line 27
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdit;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/zzdit;-><init>(Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 30
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdu:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdis;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdis;-><init>(Lcom/google/android/gms/internal/ads/zzve;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method

.method public final zzux()V
    .locals 3

    move-object v0, p0

    .line 42
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdz:Lcom/google/android/gms/internal/ads/zzdir;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 44
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdy:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzdiw;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    .line 45
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdir;->zzhdw:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdiz;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkb;->zza(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/ads/zzdka;)V

    return-void
.end method
