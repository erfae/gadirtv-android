.class public final Lcom/google/android/gms/internal/ads/zzdbc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdfi<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final zzciz:Ljava/lang/String;

.field private final zzdsu:Ljava/lang/String;

.field private final zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

.field private final zzgyw:Lcom/google/android/gms/internal/ads/zzbpo;

.field private final zzgyx:Lcom/google/android/gms/internal/ads/zzdon;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdbc;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbpo;Lcom/google/android/gms/internal/ads/zzdon;Lcom/google/android/gms/internal/ads/zzdnn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzdsu:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzciz:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyw:Lcom/google/android/gms/internal/ads/zzbpo;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyx:Lcom/google/android/gms/internal/ads/zzdon;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    return-void
.end method


# virtual methods
.method public final zzasm()Lcom/google/android/gms/internal/ads/zzdyz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabf;->zzcvm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyw:Lcom/google/android/gms/internal/ads/zzbpo;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbpo;->zzf(Lcom/google/android/gms/internal/ads/zzvk;)V

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyx:Lcom/google/android/gms/internal/ads/zzdon;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdon;->zzauy()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 14
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdbf;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzdbf;-><init>(Lcom/google/android/gms/internal/ads/zzdbc;Landroid/os/Bundle;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyr;->zzag(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzdyz;

    move-result-object v0

    return-object v0
.end method

.method final synthetic zzb(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 2

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabf;->zzcvm:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "quality_signals"

    .line 18
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzabf;->zzcvl:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdbc;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyw:Lcom/google/android/gms/internal/ads/zzbpo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbpo;->zzf(Lcom/google/android/gms/internal/ads/zzvk;)V

    const-string v0, "quality_signals"

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyx:Lcom/google/android/gms/internal/ads/zzdon;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdon;->zzauy()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 25
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyw:Lcom/google/android/gms/internal/ads/zzbpo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzfvl:Lcom/google/android/gms/internal/ads/zzdnn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnn;->zzhio:Lcom/google/android/gms/internal/ads/zzvk;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbpo;->zzf(Lcom/google/android/gms/internal/ads/zzvk;)V

    const-string p1, "quality_signals"

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzgyx:Lcom/google/android/gms/internal/ads/zzdon;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdon;->zzauy()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    const-string p1, "seq_num"

    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzdsu:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "session_id"

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdbc;->zzciz:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
