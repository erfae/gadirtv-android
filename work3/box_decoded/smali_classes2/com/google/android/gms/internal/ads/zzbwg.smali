.class final synthetic Lcom/google/android/gms/internal/ads/zzbwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbwm;


# instance fields
.field private final zzeqz:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzeqz:Z

    return-void
.end method


# virtual methods
.method public final zzp(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbwg;->zzeqz:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwl;

    .line 2
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzbwl;->zzbg(Z)V

    return-void
.end method
