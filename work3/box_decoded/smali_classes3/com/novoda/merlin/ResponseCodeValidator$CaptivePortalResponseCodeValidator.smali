.class public Lcom/novoda/merlin/ResponseCodeValidator$CaptivePortalResponseCodeValidator;
.super Ljava/lang/Object;
.source "ResponseCodeValidator.java"

# interfaces
.implements Lcom/novoda/merlin/ResponseCodeValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novoda/merlin/ResponseCodeValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptivePortalResponseCodeValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isResponseCodeValid(I)Z
    .locals 1

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
