.class public Landroidx/core/net/ParseException;
.super Ljava/lang/RuntimeException;
.source "ParseException.java"


# instance fields
.field public final response:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Not a mailto scheme"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object v0, p0, Landroidx/core/net/ParseException;->response:Ljava/lang/String;

    return-void
.end method
