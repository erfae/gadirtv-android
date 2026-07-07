.class final Lcom/google/android/gms/internal/ads/zzalj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzahv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzahv<",
        "Lcom/google/android/gms/internal/ads/zzalz;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdjb:Lcom/google/android/gms/internal/ads/zzako;

.field private final synthetic zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

.field private final synthetic zzdje:Lcom/google/android/gms/internal/ads/zzef;

.field private final synthetic zzdjf:Lcom/google/android/gms/ads/internal/util/zzbr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzalb;Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzako;Lcom/google/android/gms/ads/internal/util/zzbr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdje:Lcom/google/android/gms/internal/ads/zzef;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjb:Lcom/google/android/gms/internal/ads/zzako;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjf:Lcom/google/android/gms/ads/internal/util/zzbr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalz;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzalb;->zza(Lcom/google/android/gms/internal/ads/zzalb;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    const-string p2, "JS Engine is requesting an update"

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzalb;->zzd(Lcom/google/android/gms/internal/ads/zzalb;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Starting reload."

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzalb;->zza(Lcom/google/android/gms/internal/ads/zzalb;I)I

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjc:Lcom/google/android/gms/internal/ads/zzalb;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdje:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzalb;->zza(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzals;

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjb:Lcom/google/android/gms/internal/ads/zzako;

    const-string v0, "/requestReload"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzalj;->zzdjf:Lcom/google/android/gms/ads/internal/util/zzbr;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/util/zzbr;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzahv;

    .line 11
    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzako;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzahv;)V

    .line 12
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
