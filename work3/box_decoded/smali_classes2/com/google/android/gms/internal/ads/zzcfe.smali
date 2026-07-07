.class final synthetic Lcom/google/android/gms/internal/ads/zzcfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# instance fields
.field private final zzdih:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zzdih:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcfe;->zzdih:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzadv;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcfd;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzcfd;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzadv;)V

    return-object v1
.end method
