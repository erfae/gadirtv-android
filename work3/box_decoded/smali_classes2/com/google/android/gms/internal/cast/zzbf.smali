.class final Lcom/google/android/gms/internal/cast/zzbf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/internal/zzc;


# instance fields
.field private final synthetic zzvm:Lcom/google/android/gms/internal/cast/zzbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzvm:Lcom/google/android/gms/internal/cast/zzbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzbf;->zzvm:Lcom/google/android/gms/internal/cast/zzbg;

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzbg;->zza(Lcom/google/android/gms/internal/cast/zzbg;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
