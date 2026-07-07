.class public final Lcom/google/android/gms/internal/cast/zzlc$zzc;
.super Lcom/google/android/gms/internal/cast/zzju;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cast/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "TT;*>;>",
        "Lcom/google/android/gms/internal/cast/zzju<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzbmv:Lcom/google/android/gms/internal/cast/zzlc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cast/zzlc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzju;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzlc$zzc;->zzbmv:Lcom/google/android/gms/internal/cast/zzlc;

    return-void
.end method
