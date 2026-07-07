.class final synthetic Lcom/google/android/gms/internal/ads/zzcwm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqy;


# instance fields
.field private final zzgum:Lcom/google/android/gms/internal/ads/zzabu;

.field private final zzguu:Lcom/google/android/gms/internal/ads/zzcwj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcwj;Lcom/google/android/gms/internal/ads/zzabu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwm;->zzguu:Lcom/google/android/gms/internal/ads/zzcwj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwm;->zzgum:Lcom/google/android/gms/internal/ads/zzabu;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwm;->zzguu:Lcom/google/android/gms/internal/ads/zzcwj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcwm;->zzgum:Lcom/google/android/gms/internal/ads/zzabu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcwj;->zzb(Lcom/google/android/gms/internal/ads/zzabu;)V

    return-void
.end method
