.class final synthetic Lcom/google/android/gms/internal/ads/zzzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzckv:Lcom/google/android/gms/internal/ads/zzzu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzzu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzckv:Lcom/google/android/gms/internal/ads/zzzu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzzx;->zzckv:Lcom/google/android/gms/internal/ads/zzzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzu;->zzrd()V

    return-void
.end method
