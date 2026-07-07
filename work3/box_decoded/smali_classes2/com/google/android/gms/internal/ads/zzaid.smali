.class final Lcom/google/android/gms/internal/ads/zzaid;
.super Ljava/util/TimerTask;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final synthetic zzdhc:Landroid/app/AlertDialog;

.field private final synthetic zzdhd:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzahz;Landroid/app/AlertDialog;Ljava/util/Timer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaid;->zzdhc:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaid;->zzdhd:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->zzdhc:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaid;->zzdhd:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
