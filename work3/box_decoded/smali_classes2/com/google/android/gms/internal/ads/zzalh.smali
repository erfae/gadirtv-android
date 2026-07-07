.class final synthetic Lcom/google/android/gms/internal/ads/zzalh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzako;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzako;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjd:Lcom/google/android/gms/internal/ads/zzako;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzako;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzalh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzalh;-><init>(Lcom/google/android/gms/internal/ads/zzako;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzalh;->zzdjd:Lcom/google/android/gms/internal/ads/zzako;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzako;->destroy()V

    return-void
.end method
