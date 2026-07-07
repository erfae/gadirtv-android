.class final synthetic Lcom/google/android/gms/internal/ads/zzdej;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdfj;


# instance fields
.field private final zzhan:Lcom/google/android/gms/internal/ads/zzdeg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdeg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdej;->zzhan:Lcom/google/android/gms/internal/ads/zzdeg;

    return-void
.end method


# virtual methods
.method public final zzs(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdej;->zzhan:Lcom/google/android/gms/internal/ads/zzdeg;

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdeg;->zzp(Landroid/os/Bundle;)V

    return-void
.end method
