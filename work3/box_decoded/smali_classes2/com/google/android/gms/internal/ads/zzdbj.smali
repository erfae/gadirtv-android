.class final synthetic Lcom/google/android/gms/internal/ads/zzdbj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdux;


# instance fields
.field private final zzbvq:Lcom/google/android/gms/internal/ads/zzazq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzazq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzbvq:Lcom/google/android/gms/internal/ads/zzazq;

    return-void
.end method


# virtual methods
.method public final zzbl(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdbj;->zzbvq:Lcom/google/android/gms/internal/ads/zzazq;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazq;->set(Ljava/lang/Object;)Z

    return-void
.end method
