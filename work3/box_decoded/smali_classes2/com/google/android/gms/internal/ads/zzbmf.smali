.class final synthetic Lcom/google/android/gms/internal/ads/zzbmf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzftb:Lcom/google/android/gms/internal/ads/zzbmg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbmg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmf;->zzftb:Lcom/google/android/gms/internal/ads/zzbmg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmf;->zzftb:Lcom/google/android/gms/internal/ads/zzbmg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbmg;->zzajk()V

    return-void
.end method
