.class final synthetic Lcom/google/android/gms/internal/ads/zzbva;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbvm;


# static fields
.field static final zzfyg:Lcom/google/android/gms/internal/ads/zzbvm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbva;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbva;->zzfyg:Lcom/google/android/gms/internal/ads/zzbvm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdir;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdir;->onUserLeaveHint()V

    return-void
.end method
