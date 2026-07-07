.class public final Lcom/google/android/gms/internal/ads/zzcct;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgds:Lcom/google/android/gms/internal/ads/zzccq;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcct;->zzgds:Lcom/google/android/gms/internal/ads/zzccq;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzccq;)Lcom/google/android/gms/internal/ads/zzcct;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcct;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcct;-><init>(Lcom/google/android/gms/internal/ads/zzccq;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
