.class public Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;
.super Ljava/lang/Object;
.source "PersonalMenuItemObject.java"


# instance fields
.field public menuItemIconUrl:Ljava/lang/String;

.field public menuItemName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 13
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;->menuItemName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/magoware/magoware/webtv/database/objects/personal_activity_objects/PersonalMenuItemObject;->menuItemIconUrl:Ljava/lang/String;

    return-void
.end method

.method public static getFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    const/16 v0, 0x2f

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, " "

    const-string v1, "%20"

    .line 19
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
