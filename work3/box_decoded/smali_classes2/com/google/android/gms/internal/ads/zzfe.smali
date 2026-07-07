.class final Lcom/google/android/gms/internal/ads/zzfe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzzl:Lcom/google/android/gms/internal/ads/zzfa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzzl:Lcom/google/android/gms/internal/ads/zzfa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfe;->zzzl:Lcom/google/android/gms/internal/ads/zzfa;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfa;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzabf;->initialize(Landroid/content/Context;)V

    return-void
.end method
