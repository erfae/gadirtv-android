.class public abstract Lcom/google/android/gms/internal/cast/zzlc$zzb;
.super Lcom/google/android/gms/internal/cast/zzlc;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzmn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cast/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/cast/zzlc$zzb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/cast/zzlc<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/cast/zzmn;"
    }
.end annotation


# instance fields
.field protected zzbnb:Lcom/google/android/gms/internal/cast/zzku;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/cast/zzku<",
            "Lcom/google/android/gms/internal/cast/zzlc$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlc;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzku;->zzip()Lcom/google/android/gms/internal/cast/zzku;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzlc$zzb;->zzbnb:Lcom/google/android/gms/internal/cast/zzku;

    return-void
.end method
