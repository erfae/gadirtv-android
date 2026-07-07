.class final Lcom/google/android/gms/internal/ads/zzwh;
.super Lcom/google/android/gms/internal/ads/zzwn;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzwn<",
        "Lcom/google/android/gms/internal/ads/zzxg;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcil:Ljava/lang/String;

.field private final synthetic zzcim:Lcom/google/android/gms/internal/ads/zzani;

.field private final synthetic zzcin:Lcom/google/android/gms/internal/ads/zzvx;

.field private final synthetic zzcio:Lcom/google/android/gms/internal/ads/zzvn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzvx;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcin:Lcom/google/android/gms/internal/ads/zzvx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwh;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcio:Lcom/google/android/gms/internal/ads/zzvn;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcil:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcim:Lcom/google/android/gms/internal/ads/zzani;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzwn;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzxp;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwh;->val$context:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcio:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcil:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcim:Lcom/google/android/gms/internal/ads/zzani;

    const v6, 0xc1fb2e0

    move-object v1, p1

    .line 12
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzxp;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzxg;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzpt()Ljava/lang/Object;
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwh;->val$context:Landroid/content/Context;

    const-string v1, "interstitial"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzvx;->zzb(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzzs;-><init>()V

    return-object v0
.end method

.method public final synthetic zzpu()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcin:Lcom/google/android/gms/internal/ads/zzvx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzvx;->zza(Lcom/google/android/gms/internal/ads/zzvx;)Lcom/google/android/gms/internal/ads/zzvi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzwh;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcio:Lcom/google/android/gms/internal/ads/zzvn;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcil:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzwh;->zzcim:Lcom/google/android/gms/internal/ads/zzani;

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvi;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzvn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzani;I)Lcom/google/android/gms/internal/ads/zzxg;

    move-result-object v0

    return-object v0
.end method
