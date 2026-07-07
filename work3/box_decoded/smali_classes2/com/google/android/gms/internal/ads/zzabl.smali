.class final synthetic Lcom/google/android/gms/internal/ads/zzabl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzczo:Lcom/google/android/gms/internal/ads/zzabi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzabi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzczo:Lcom/google/android/gms/internal/ads/zzabi;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabl;->zzczo:Lcom/google/android/gms/internal/ads/zzabi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabi;->zzrr()V

    return-void
.end method
