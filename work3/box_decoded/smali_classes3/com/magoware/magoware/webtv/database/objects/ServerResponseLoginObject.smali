.class public Lcom/magoware/magoware/webtv/database/objects/ServerResponseLoginObject;
.super Ljava/lang/Object;
.source "ServerResponseLoginObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public error_code:I

.field public error_description:Ljava/lang/String;

.field public extra_data:Ljava/lang/String;

.field public response_object:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public status_code:I

.field public timestamp:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
