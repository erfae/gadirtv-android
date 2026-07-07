.class public final Lcom/google/android/gms/internal/ads/zzdkq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzdkl<",
        "Lcom/google/android/gms/internal/ads/zzchf;",
        "Lcom/google/android/gms/internal/ads/zzchc;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final zzevi:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final zzexm:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            ">;"
        }
    .end annotation
.end field

.field private final zzexn:Lcom/google/android/gms/internal/ads/zzeps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdpr;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;Lcom/google/android/gms/internal/ads/zzeps;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Landroid/content/Context;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdpa;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzeps<",
            "Lcom/google/android/gms/internal/ads/zzdpr;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzevi:Lcom/google/android/gms/internal/ads/zzeps;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzexm:Lcom/google/android/gms/internal/ads/zzeps;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzexn:Lcom/google/android/gms/internal/ads/zzeps;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzevi:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzexm:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdpa;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdkq;->zzexn:Lcom/google/android/gms/internal/ads/zzeps;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzeps;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzdpr;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzabf;->zzcxb:Lcom/google/android/gms/internal/ads/zzaaq;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwq;->zzqe()Lcom/google/android/gms/internal/ads/zzabb;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzabb;->zzd(Lcom/google/android/gms/internal/ads/zzaaq;)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 12
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdjk;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdjk;-><init>()V

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdpj;->zzhle:Lcom/google/android/gms/internal/ads/zzdpj;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdjt;

    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/zzdjt;-><init>(Lcom/google/android/gms/internal/ads/zzdkl;)V

    .line 14
    invoke-virtual {v2, v4, v0, v1, v5}, Lcom/google/android/gms/internal/ads/zzdpr;->zza(Lcom/google/android/gms/internal/ads/zzdpj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpa;Lcom/google/android/gms/internal/ads/zzdqc;)Lcom/google/android/gms/internal/ads/zzdpu;

    move-result-object v0

    .line 15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdjp;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdkc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdkd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzdkd;-><init>()V

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdkc;-><init>(Lcom/google/android/gms/internal/ads/zzdkl;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdju;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdpu;->zzhez:Lcom/google/android/gms/internal/ads/zzdpd;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzazj;->zzegp:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdju;-><init>(Lcom/google/android/gms/internal/ads/zzdpd;Ljava/util/concurrent/Executor;)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdpu;->zzhmg:Lcom/google/android/gms/internal/ads/zzdpv;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzazj;->zzegp:Lcom/google/android/gms/internal/ads/zzdzc;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/zzdjp;-><init>(Lcom/google/android/gms/internal/ads/zzdkl;Lcom/google/android/gms/internal/ads/zzdkl;Lcom/google/android/gms/internal/ads/zzdpv;Ljava/util/concurrent/Executor;)V

    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkd;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdkd;-><init>()V

    :goto_0
    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 17
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdkl;

    return-object v0
.end method
