.class public final Lcom/google/android/gms/internal/ads/zzcwp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzacb;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzguw:Lcom/google/android/gms/internal/ads/zzcwq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcwq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzguw:Lcom/google/android/gms/internal/ads/zzcwq;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcwq;)Lcom/google/android/gms/internal/ads/zzcwp;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcwp;-><init>(Lcom/google/android/gms/internal/ads/zzcwq;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwp;->zzguw:Lcom/google/android/gms/internal/ads/zzcwq;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcwq;->zzaro()Lcom/google/android/gms/internal/ads/zzacb;

    move-result-object v0

    return-object v0
.end method
