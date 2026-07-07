.class final synthetic Lcom/google/android/gms/internal/ads/zzbev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzesz:Lcom/google/android/gms/internal/ads/zzbet;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbet;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzesz:Lcom/google/android/gms/internal/ads/zzbet;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdha:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzesz:Lcom/google/android/gms/internal/ads/zzbet;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbev;->zzdha:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbet;->zzfq(Ljava/lang/String;)V

    return-void
.end method
