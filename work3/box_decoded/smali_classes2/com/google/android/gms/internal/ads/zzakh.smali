.class final Lcom/google/android/gms/internal/ads/zzakh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzdib:Lcom/google/android/gms/internal/ads/zzakk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzakk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdib:Lcom/google/android/gms/internal/ads/zzakk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzakk;Lcom/google/android/gms/internal/ads/zzake;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzakh;-><init>(Lcom/google/android/gms/internal/ads/zzakk;)V

    return-void
.end method


# virtual methods
.method public final notify(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakh;->zzdib:Lcom/google/android/gms/internal/ads/zzakk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzakk;->zzdc(Ljava/lang/String;)Z

    return-void
.end method
