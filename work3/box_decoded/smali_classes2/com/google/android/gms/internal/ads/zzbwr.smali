.class public final Lcom/google/android/gms/internal/ads/zzbwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/zzbxy<",
        "Lcom/google/android/gms/internal/ads/zzbtj;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final zzfzf:Lcom/google/android/gms/internal/ads/zzbwp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbwp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbwr;->zzfzf:Lcom/google/android/gms/internal/ads/zzbwp;

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzbwp;)Lcom/google/android/gms/internal/ads/zzbwr;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbwr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbwr;-><init>(Lcom/google/android/gms/internal/ads/zzbwp;)V

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzbwp;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbwp;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbxy<",
            "Lcom/google/android/gms/internal/ads/zzbtj;",
            ">;>;"
        }
    .end annotation

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 6
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzepl;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbwr;->zzfzf:Lcom/google/android/gms/internal/ads/zzbwp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbwr;->zzi(Lcom/google/android/gms/internal/ads/zzbwp;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
