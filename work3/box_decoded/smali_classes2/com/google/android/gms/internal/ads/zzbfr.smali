.class final Lcom/google/android/gms/internal/ads/zzbfr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field private final synthetic zzepx:Lcom/google/android/gms/internal/ads/zzawq;

.field private final synthetic zzete:Lcom/google/android/gms/internal/ads/zzbfm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbfm;Lcom/google/android/gms/internal/ads/zzawq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzete:Lcom/google/android/gms/internal/ads/zzbfm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzepx:Lcom/google/android/gms/internal/ads/zzawq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzete:Lcom/google/android/gms/internal/ads/zzbfm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfr;->zzepx:Lcom/google/android/gms/internal/ads/zzawq;

    const/16 v2, 0xa

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbfm;->zza(Lcom/google/android/gms/internal/ads/zzbfm;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzawq;I)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
